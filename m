Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC97BD2504E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 08:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56c2Q1YR1YPT0XwY80ZfC+pRBBLd6kYh4YOkARe9hP0=; b=VfE9nGaajIG/WN
	+USKzkqNZvsG7U4f8CmSLKqvmFNCbEKHAoYRr8H4ZRfdC0M3rVMlIcy2V1IULQ2Yl+ClCNf6D+aKb
	7tAr9hfUHd3QtTR3B2XZ2i6Za5ARBQY34RRJcYw2qscJ3VXjjyZKjwtNaSvBl+FTPrrWSfougQst5
	O4QEoRUUP5me9et+ucr9KittrpvoMWuKCa0Jj74yhYTSS7CScPriSSrULaEBxls5SIdBbXFbNiwv9
	SiSegmloh8P1qV71IDofhWNirlNaO0DMhfRF/LD8yidnEoVg2p0gzrfeuadNx2IPaA3pB+n2uMBbS
	1CAOVQxorfl0YX3h0YAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDFe-00000004zBh-17k6;
	Mon, 12 Jan 2026 08:26:14 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDFb-00000004zAg-1bFe
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 08:26:12 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-47a95efd2ceso53853725e9.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 00:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768206369; x=1768811169; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e2tN6b+lbrWfZ7oxTxnv+TGwJvGYGk587gJwGFobI+w=;
        b=VOnwxPfIGYCtpwCzOX70I+fqIPb1S/9eJCQLpo++Yxyjo6Y6dexyo7PuoqVWCUVehP
         IUbc/IHxD+Cxp1l9b2c+d8YRyG9KhO4Rjzzv45+j220HNh5r8vXRuko04rSopbE58qy8
         g7xABxCp386mpZ15DvvmJK01qy1Tw4DW0HQV19lxIXm47VNGqyGeAN39rQ6VnMS+L/8y
         hXOb+jadfVWUwvG50qsfoFsWWCnpoz9c/nyFsoZ7yeN6/FgoCK1QFMKq+SCQClbc9uyp
         +XdUFEKAgZR/j0Vr298Nrpkq1rXLwE9DaJJ2k3OcTO+FGo5e2WP/eMZCVTaZkIXCDejL
         IWyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768206369; x=1768811169;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e2tN6b+lbrWfZ7oxTxnv+TGwJvGYGk587gJwGFobI+w=;
        b=bRRfxbwEbqtvE4eTayH3evOFMpz2apBQGtRKcHHbhIeyfCuGGKVUSTDPeFU8KYurjo
         uirQDyiiS/GOK9UJ4WVddAzq6B3ifaT9O9MpFaH3ma1BVnyj2P6mwgqU7me0rs8EFB42
         +Vz/UfmSqUoRWf0MVxyUe9i4yQC+JB0pDFozM3LS2958CU4ng0uimQPxFe0JhQ+FmS9x
         pqtPwXobk/IlkqFGQjt8ZN42IXtcCXBPLSlSS8c3NlB9HGiErX5FJNkPehqpqmNuGq8Q
         P3jutO6x9UCtDkPLHNEg9li3rgFqsR1iMIAKHdvyTWHBT7csUrwjZLdg2Dt6Pyu2bCIP
         EIPw==
X-Forwarded-Encrypted: i=1; AJvYcCUQEnpk40xzovyTqEon6osyFxNY3qW0QvQrwj4j16hMmCi80OMygP/h5Bl6IT6r5QpD3i3r9pwQpvE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXEaz2eaSt7R+HZGR5OZDpi0OCSoevHiBojUHxJO55lv8+KLc3
	XIWseWsT5m4W2SxqoYzF58Cw7O9Zq+9qAN87wII+JH9yjbl4aZ2R+zTf1LkM+UNvjqE=
X-Gm-Gg: AY/fxX7tStt8cGNN+J0KbJHauU5fRKJETUvZvsBRv7s0mi2QsX8a8zstSyzuvh2xeec
	ff1LAWIK/5fjfzXwqAATnrERZrJLMSsR0urLaHUi1GuuoF4PAxLEaf7PA8Y5WMqAUrlx/uaqoiy
	RqPLQftYSpcsnqAUe7ja0S2OuVCMf6NtZJ6Std/VGXPGQs232GI/hofDFmV0G2GkVbiF4SrZbJv
	AyhmfPbNfzVWgthslE0M3g3sz4N4gUK7Ty5cGIzquIBqDedl4uGPISb0LFkfAwB4gqMmyLkTuBt
	02jH0xGBSGmUMjim/OLzz3Oh1xOgZq1zrS7SVp2KL5qa9UU5eHcaC2YlckEghYrxvC9l6KK24AQ
	92S1uLoEthDUWpaoolQ5n81IdkL/uiC74fS4FLmPrzVaP0BSKOV8AcNllHskHDdivbW1T1n8a18
	txSpguxEfwvr7L66XVNzv3xXACFCrq6Cop1mADaG6ReCLs1Ae7il9pqXKFmxTozfo=
X-Google-Smtp-Source: AGHT+IEHe//EMfbw9CmlUYlXkRTQIfxEKVLk8LbEc0vmw0imeAGWpvdjD+oOFjRIpcjB4QO1aoBseQ==
X-Received: by 2002:a05:600c:8b43:b0:479:1ac2:f9b8 with SMTP id 5b1f17b1804b1-47d84b33b7bmr196273835e9.21.1768206368719;
        Mon, 12 Jan 2026 00:26:08 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:2842:da44:d7db:b175? ([2a01:e0a:3d9:2080:2842:da44:d7db:b175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8661caffsm123763705e9.5.2026.01.12.00.26.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 00:26:08 -0800 (PST)
Message-ID: <543d9e55-c858-40f9-8785-c9f636850120@linaro.org>
Date: Mon, 12 Jan 2026 09:26:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
 <2486dc4b-71f3-4cd9-8139-b397407d7e4d@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <2486dc4b-71f3-4cd9-8139-b397407d7e4d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_002611_463914_EAC6046A 
X-CRM114-Status: GOOD (  15.18  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMS83LzI2IDE0OjUzLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiBIaSwKPiAKPiBPbiAxLzcv
MjYgMDk6MDUsIEx1Y2EgV2Vpc3Mgd3JvdGU6Cj4+IEFkZCB0aGUgbm9kZXMgZm9yIHRoZSBVRlMg
UEhZIGFuZCBVRlMgaG9zdCBjb250cm9sbGVyLCBhbG9uZyB3aXRoIHRoZQo+PiBJQ0UgdXNlZCBm
b3IgVUZTLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhIFdlaXNzIDxsdWNhLndlaXNzQGZhaXJw
aG9uZS5jb20+Cj4+IC0tLQo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vbWlsb3MuZHRz
aSB8IDEyNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDEyNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21pbG9zLmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vbWlsb3MuZHRzaQo+PiBpbmRleCBlMWE1MWQ0Mzk0M2YuLjBmNjlkZWFiYjYw
YyAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21pbG9zLmR0c2kKPj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21pbG9zLmR0c2kKPj4gQEAgLTc5Nyw5ICs3
OTcsOSBAQCBnY2M6IGNsb2NrLWNvbnRyb2xsZXJAMTAwMDAwIHsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmc2xlZXBfY2xrPiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDwwPiwgLyogcGNpZV8wX3BpcGVfY2xrICovCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MD4sIC8qIHBjaWVfMV9waXBlX2NsayAqLwo+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDA+LCAvKiB1ZnNfcGh5X3J4X3N5
bWJvbF8wX2NsayAqLwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDA+LCAv
KiB1ZnNfcGh5X3J4X3N5bWJvbF8xX2NsayAqLwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPDA+LCAvKiB1ZnNfcGh5X3R4X3N5bWJvbF8wX2NsayAqLwo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZ1ZnNfbWVtX3BoeSAwPiwKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmdWZzX21lbV9waHkgMT4sCj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8JnVmc19tZW1fcGh5IDI+LAo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPDA+OyAvKiB1c2IzX3BoeV93cmFwcGVyX2djY191c2IzMF9w
aXBlX2NsayAqLwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjY2xvY2stY2VsbHMgPSA8
MT47Cj4+IEBAIC0xMTUxLDYgKzExNTEsMTI3IEBAIGFnZ3JlMl9ub2M6IGludGVyY29ubmVjdEAx
NzAwMDAwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcWNvbSxiY20tdm90ZXJzID0g
PCZhcHBzX2JjbV92b3Rlcj47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiArwqDCoMKgwqDC
oMKgwqAgdWZzX21lbV9waHk6IHBoeUAxZDgwMDAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29tcGF0aWJsZSA9ICJxY29tLG1pbG9zLXFtcC11ZnMtcGh5IjsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweDAxZDgwMDAwIDB4MCAweDIwMDA+Owo+PiArCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmcnBtaGNjIFJQTUhfQ1hPX0NMSz4sCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVUZTX1BIWV9QSFlf
QVVYX0NMSz4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnRjc3IgVENT
Ul9VRlNfQ0xLUkVGX0VOPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMg
PSAicmVmIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
cmVmX2F1eCIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
InFyZWYiOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0cyA9IDwmdWZzX21l
bV9oYyAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXQtbmFtZXMgPSAidWZzcGh5
IjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3dlci1kb21haW5zID0gPCZnY2Mg
VUZTX01FTV9QSFlfR0RTQz47Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI2Nsb2Nr
LWNlbGxzID0gPDE+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcGh5LWNlbGxzID0gPDA+
Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+
ICvCoMKgwqDCoMKgwqDCoCB9Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCB1ZnNfbWVtX2hjOiB1
ZnNoY0AxZDg0MDAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJx
Y29tLG1pbG9zLXVmc2hjIiwgInFjb20sdWZzaGMiLCAiamVkZWMsdWZzLTIuMCI7Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDAgMHgwMWQ4NDAwMCAweDAgMHgzMDAwPjsKPj4g
Kwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjY1IElS
UV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xv
Y2tzID0gPCZnY2MgR0NDX1VGU19QSFlfQVhJX0NMSz4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfQUdHUkVfVUZTX1BIWV9BWElfQ0xLPiwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VRlNfUEhZX0FIQl9DTEs+LAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfVU5J
UFJPX0NPUkVfQ0xLPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmdGNz
ciBUQ1NSX1VGU19QQURfQ0xLUkVGX0VOPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDwmZ2NjIEdDQ19VRlNfUEhZX1RYX1NZTUJPTF8wX0NMSz4sCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVUZTX1BIWV9SWF9TWU1CT0xfMF9DTEs+
LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlf
UlhfU1lNQk9MXzFfQ0xLPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMg
PSAiY29yZV9jbGsiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJidXNfYWdncl9jbGsiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICJpZmFjZV9jbGsiLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJjb3JlX2Nsa191bmlwcm8iLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJyZWZfY2xrIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAidHhfbGFuZTBfc3luY19jbGsiLAo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJyeF9sYW5lMF9zeW5jX2NsayIsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInJ4X2xhbmUxX3N5
bmNfY2xrIjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldHMgPSA8JmdjYyBH
Q0NfVUZTX1BIWV9CQ1I+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldC1uYW1lcyA9
ICJyc3QiOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVyY29ubmVjdHMgPSA8
JmFnZ3JlMV9ub2MgTUFTVEVSX1VGU19NRU0gUUNPTV9JQ0NfVEFHX0FMV0FZUwo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmbWNfdmlydCBTTEFWRV9FQkkxIFFD
T01fSUNDX1RBR19BTFdBWVM+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZnZW1fbm9jIE1BU1RFUl9BUFBTU19QUk9DIFFDT01fSUNDX1RBR19BQ1RJVkVfT05M
WQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmY25vY19jZmcg
U0xBVkVfVUZTX01FTV9DRkcgUUNPTV9JQ0NfVEFHX0FDVElWRV9PTkxZPjsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaW50ZXJjb25uZWN0LW5hbWVzID0gInVmcy1kZHIiLAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjcHUtdWZzIjsKPj4g
Kwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3dlci1kb21haW5zID0gPCZnY2MgVUZTX1BI
WV9HRFNDPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBt
aHBkX29wcF9ub20+Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wZXJhdGluZy1w
b2ludHMtdjIgPSA8JnVmc19vcHBfdGFibGU+Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlvbW11cyA9IDwmYXBwc19zbW11IDB4NjAgMD47Cj4gCj4gZG1hLWNvaGVyZW50ID8KPiAK
PiBhbmQgbm8gTUNRIHN1cHBvcnQgPwoKU28sIHBlb3BsZSBqdXN0IGlnbm9yZSBteSBjb21tZW50
ID8KCk1pbG9zIGlzIGJhc2VkIG9uIFNNODU1MCwgc28gaXQgc2hvdWxkIGhhdmUgZG1hLWNvaGVy
ZW50LCBmb3IgdGhlIE1DUQpJIGhvcGUgdGhleSB1c2VkIHRoZSBmaXhlZCBhZGRlZCB0byB0aGUg
U004NjUwIFVGUyBjb250cm9sbGVyIGZvciBNQ1EuCgpOZWlsCgo+IAo+IDxzbmlwPgo+IAo+IFRo
YW5rcywKPiBOZWlsCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
