Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 550ADC54E69
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 14:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QI4EXJKUY3h153MnKCZTdLciHcvTLkvAZDcntfPaOJI=; b=F4KcVYyl3MDIjh
	2u7iQSMdZJTcdgddRgJ2ZazGMm7gxqp5qHurvEymqUa6L3l6+ipPcJRSohiEf6uatn49Yjf3AYeeE
	u6IL8N8llGs1CIAoBw7Tf2g//UhfnvvnAfk2OitciPw44iOe23INy3BpHlZD2dMAv7LXMWZAQDXNF
	H8aG0zvuBQ00IzAXyX0K2g7EG10ZK8WYaDNNckCozjsaH+5c9I8iuamK78uWjqcvrT8AdLOiMee0G
	vU/ehTnz9c0zvqydMCnZ772ipn3Lx1K12Wl7m4msFRXMjyXcMfLlaeT2YzXIfd9ozqmR0Tfo4L5n+
	F9K0Z5Q8Y9LqrpqdR2lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmaYt-0000000CzFJ-3oyl;
	Tue, 19 Mar 2024 14:35:31 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmaYr-0000000CzEc-1qJX
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 14:35:31 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-34100f4f9a2so1642748f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 07:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710858927; x=1711463727; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:from:content-language:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cQAG9rC2xpXTSJPk2UtPGZo3wVxTlSoZrxNYoeZfhlo=;
        b=Vd6jUE5vSEbAHr0JYsugnc0jOMcfblEm56WMUcX2nPpXU1Ax4tQACm7IMtja4tIeSy
         Ww5cKGLSm0tHLPbe4vYuGUixG10Ed+rvFW3p3ceUTWchQzEkshkW6Xci3HBDkY6Pyisy
         7Z8ePhxcriBn+QjHOaweoEZhxUU77H5hGYCvQc1RrlsJXUdvGC1vBEAsFdWqjpNVmh7b
         dB5O4mp4K6uYrsceaV59u/WraY9D171vePY2WjFQTzdGnyJr4vCZ6oM5RE8TE1jhQH+e
         HJMcuxn/GRSJdc0Flq7AYEIJnW8lt/00X5CLgyCBuLX0Rq6G4hRLQWu2/fCK2W0c4oAT
         wrOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710858927; x=1711463727;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:from:content-language:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cQAG9rC2xpXTSJPk2UtPGZo3wVxTlSoZrxNYoeZfhlo=;
        b=OToPbYSJeUNERFYo0qy6Cci4OLSynbP9lKZ5HeWSsEenJkYKwjTU8vCiw2iHWvBO2h
         fotZ1IL84Uii8272MiFpI/xybgDpbtFaiBHQPf9unpqNWArCaHoRfK7/cPMKl8InbWWh
         vHCIjZLLgjK0ysyqeh+Y5tXiwKx5AcVvQisII0AO3Dbi1fnWTL5q8ZaBSbybilc/k+V3
         cnWvS8jd7YZrH6CTxQKpfroRGHscHB7WxYQTjS3ioL8IeEph5cc1i/ooYa58vB7I6xbm
         3IXcEZccGkeA+FFbwfD480yR8NRW2AsbJcm+axzOWI1pJi1IKczSN59bgi/OHZEd+Knz
         TxXA==
X-Forwarded-Encrypted: i=1; AJvYcCXT6aL8FLv01Go2iTxTtYezPHYmEgacdcFFWQRwPy/BQtkIpx5DMNLIsBFRN0XPisDNGFgtUJ3pxvdBSQP6DavtD1HOD3KtQ6qNegCLjw==
X-Gm-Message-State: AOJu0YwRzMJvh5rc6ZmKg9g09X42RkQME0VrPuziDebr4Q78EqNR2MPy
	Uunmz5QaK+i5ZU03WBycsYe8q4OF4YzIVTGKPdJBQ10P0zsHsDzrdXnOK8Fftb4=
X-Google-Smtp-Source: AGHT+IHO8h3UXWZ5sW8MS/aJVvWWP7N8bh1icyA06qdNRdE8dgzo6vSmpDYQIEqWuk5wSfE2dl0YnQ==
X-Received: by 2002:a5d:6110:0:b0:33d:24af:9153 with SMTP id v16-20020a5d6110000000b0033d24af9153mr7926582wrt.20.1710858927102;
        Tue, 19 Mar 2024 07:35:27 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e? ([2a01:e0a:982:cbb0:2fcf:6f16:3b3b:da8e])
        by smtp.gmail.com with ESMTPSA id bs18-20020a056000071200b0034181bea3b0sm2928949wrb.3.2024.03.19.07.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 07:35:26 -0700 (PDT)
Message-ID: <090e306c-0bfc-4374-83ed-e883d73a0f0a@linaro.org>
Date: Tue, 19 Mar 2024 15:35:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] phy: qcom: qmp-pcie: register second optional PHY AUX
 clock
Content-Language: en-US, fr
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-3-926d7a4ccd80@linaro.org>
 <CAA8EJpoJ0rUd8aY6xpXyL3Obg66XtOebso_AUUxKmg1CWNykJA@mail.gmail.com>
 <85d67f3f-2b01-44c0-ace3-5e7cb48a9431@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <85d67f3f-2b01-44c0-ace3-5e7cb48a9431@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_073529_603522_915B6AB1 
X-CRM114-Status: GOOD (  20.49  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTkvMDMvMjAyNCAxMTo1OSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMTkvMDMvMjAy
NCAxMTo1NSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gT24gVHVlLCAxOSBNYXIgMjAyNCBh
dCAxMjo0NSwgTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+IHdyb3Rl
Ogo+Pj4KPj4+IFRoZSBQQ0llIEdlbjR4MiBQSFkgZm91bmQgaW4gdGhlIFNNOFs0NTZdNTAgU29D
cyBoYXZlIGEgc2Vjb25kIGNsb2NrLAo+Pj4gYWRkIHRoZSBjb2RlIHRvIHJlZ2lzdGVyIGl0IGZv
ciBQSFlzIGNvbmZpZ3MgdGhhdCBzZXRzIGEgYXV4X2Nsb2NrX3JhdGUuCj4+Pgo+Pj4gSW4gb3Jk
ZXIgdG8gZ2V0IHRoZSByaWdodCBjbG9jaywgYWRkIHFtcF9wY2llX2Nsa19od19nZXQoKSB3aGlj
aCB1c2VzCj4+PiB0aGUgbmV3bHkgaW50cm9kdWNlZCBRTVBfUENJRV9QSVBFX0NMSyAmIFFNUF9Q
Q0lFX1BIWV9BVVhfQ0xLIGNsb2NrCj4+PiBJRHMgYW5kIGFsc28gc3VwcG9ydHMgdGhlIGxlZ2Fj
eSBiaW5kaW5ncyBieSByZXR1cm5pbmcgdGhlIFBJUEUgY2xvY2suCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+Cj4+PiAtLS0K
Pj4+IMKgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgfCA3MCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDcwIGlu
c2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXBjaWUuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2ll
LmMKPj4+IGluZGV4IDA3OWIzZTMwNjQ4OS4uMmQwNTIyNmFlMjAwIDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+Pj4gKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+Pj4gQEAgLTIyLDYgKzIyLDggQEAK
Pj4+IMKgICNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+Pj4gwqAgI2luY2x1ZGUgPGxpbnV4L3Ns
YWIuaD4KPj4+Cj4+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHktcWNvbS1xbXAuaD4K
Pj4+ICsKPj4+IMKgICNpbmNsdWRlICJwaHktcWNvbS1xbXAtY29tbW9uLmgiCj4+Pgo+Pj4gwqAg
I2luY2x1ZGUgInBoeS1xY29tLXFtcC5oIgo+Pj4gQEAgLTIzODksNiArMjM5MSw5IEBAIHN0cnVj
dCBxbXBfcGh5X2NmZyB7Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCAvKiBRTVAgUEhZIHBpcGUg
Y2xvY2sgaW50ZXJmYWNlIHJhdGUgKi8KPj4+IMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgbG9u
ZyBwaXBlX2Nsb2NrX3JhdGU7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIC8qIFFNUCBQSFkgQVVY
IGNsb2NrIGludGVyZmFjZSByYXRlICovCj4+PiArwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcg
YXV4X2Nsb2NrX3JhdGU7Cj4+PiDCoCB9Owo+Pj4KPj4+IMKgIHN0cnVjdCBxbXBfcGNpZSB7Cj4+
PiBAQCAtMjQyMCw2ICsyNDI1LDcgQEAgc3RydWN0IHFtcF9wY2llIHsKPj4+IMKgwqDCoMKgwqDC
oMKgwqAgaW50IG1vZGU7Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgY2xrX2ZpeGVk
X3JhdGUgcGlwZV9jbGtfZml4ZWQ7Cj4+PiArwqDCoMKgwqDCoMKgIHN0cnVjdCBjbGtfZml4ZWRf
cmF0ZSBhdXhfY2xrX2ZpeGVkOwo+Pj4gwqAgfTsKPj4+Cj4+PiDCoCBzdGF0aWMgaW5saW5lIHZv
aWQgcXBoeV9zZXRiaXRzKHZvaWQgX19pb21lbSAqYmFzZSwgdTMyIG9mZnNldCwgdTMyIHZhbCkK
Pj4+IEBAIC0zNjgxLDYgKzM2ODcsNjIgQEAgc3RhdGljIGludCBwaHlfcGlwZV9jbGtfcmVnaXN0
ZXIoc3RydWN0IHFtcF9wY2llICpxbXAsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4+PiDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiBkZXZtX2Nsa19od19yZWdpc3RlcihxbXAtPmRldiwgJmZpeGVk
LT5odyk7Cj4+PiDCoCB9Cj4+Pgo+Pj4gKy8qCj4+PiArICogUmVnaXN0ZXIgYSBmaXhlZCByYXRl
IFBIWSBhdXggY2xvY2suCj4+PiArICoKPj4+ICsgKiBUaGUgPHM+X3BoeV9hdXhfY2xrc3JjIGdl
bmVyYXRlZCBieSBQSFkgZ29lcyB0byB0aGUgR0NDIHRoYXQgZ2F0ZQo+Pj4gKyAqIGNvbnRyb2xz
IGl0LiBUaGUgPHM+X3BoeV9hdXhfY2xrIGNvbWluZyBvdXQgb2YgdGhlIEdDQyBpcyByZXF1ZXN0
ZWQKPj4+ICsgKiBieSB0aGUgUEhZIGRyaXZlciBmb3IgaXRzIG9wZXJhdGlvbnMuCj4+PiArICog
V2UgcmVnaXN0ZXIgdGhlIDxzPl9waHlfYXV4X2Nsa3NyYyBoZXJlLiBUaGUgZ2NjIGRyaXZlciB0
YWtlcyBjYXJlCj4+PiArICogb2YgYXNzaWduaW5nIHRoaXMgPHM+X3BoeV9hdXhfY2xrc3JjIGFz
IHBhcmVudCB0byA8cz5fcGh5X2F1eF9jbGsuCj4+PiArICogQmVsb3cgcGljdHVyZSBzaG93cyB0
aGlzIHJlbGF0aW9uc2hpcC4KPj4+ICsgKgo+Pj4gKyAqwqDCoMKgwqDCoMKgwqDCoCArLS0tLS0t
LS0tLS0tLS0tKwo+Pj4gKyAqwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCBQSFkgYmxvY2vCoMKgIHw8
PC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKPj4+ICsgKsKg
wqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwKPj4+ICsgKsKgwqDCoMKgwqDCoMKgwqAgfMKgwqAg
Ky0tLS0tLS0rwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICstLS0tLSvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwKPj4+ICsgKsKgwqAg
SS9QLS0tXi0tPnzCoCBQTEzCoCB8LS0tXi0tLT5waHlfYXV4X2Nsa3NyYy0tLT58IEdDQyB8LS0t
PnBoeV9hdXhfY2xrLS0tKwo+Pj4gKyAqwqDCoMKgIGNsa8KgIHzCoMKgICstLS0tLS0tK8KgwqAg
fMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCArLS0tLS0rCj4+PiAr
ICrCoMKgwqDCoMKgwqDCoMKgICstLS0tLS0tLS0tLS0tLS0rCj4+PiArICovCj4+PiArc3RhdGlj
IGludCBwaHlfYXV4X2Nsa19yZWdpc3RlcihzdHJ1Y3QgcW1wX3BjaWUgKnFtcCwgc3RydWN0IGRl
dmljZV9ub2RlICpucCkKPj4+ICt7Cj4+PiArwqDCoMKgwqDCoMKgIHN0cnVjdCBjbGtfZml4ZWRf
cmF0ZSAqZml4ZWQgPSAmcW1wLT5hdXhfY2xrX2ZpeGVkOwo+Pj4gK8KgwqDCoMKgwqDCoCBzdHJ1
Y3QgY2xrX2luaXRfZGF0YSBpbml0ID0geyB9Owo+Pj4gK8KgwqDCoMKgwqDCoCBpbnQgcmV0Owo+
Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCByZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3N0cmluZ19pbmRl
eChucCwgImNsb2NrLW91dHB1dC1uYW1lcyIsIDEsICZpbml0Lm5hbWUpOwo+Pj4gK8KgwqDCoMKg
wqDCoCBpZiAocmV0KSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJy
KHFtcC0+ZGV2LCAiJXBPRm46IE5vIGNsb2NrLW91dHB1dC1uYW1lcyBpbmRleCAxXG4iLCBucCk7
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4gK8KgwqDC
oMKgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIGluaXQub3BzID0gJmNsa19maXhlZF9y
YXRlX29wczsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqAgZml4ZWQtPmZpeGVkX3JhdGUgPSBxbXAt
PmNmZy0+YXV4X2Nsb2NrX3JhdGU7Cj4+PiArwqDCoMKgwqDCoMKgIGZpeGVkLT5ody5pbml0ID0g
JmluaXQ7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIHJldHVybiBkZXZtX2Nsa19od19yZWdpc3Rl
cihxbXAtPmRldiwgJmZpeGVkLT5odyk7Cj4+PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyBzdHJ1Y3Qg
Y2xrX2h3ICpxbXBfcGNpZV9jbGtfaHdfZ2V0KHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKmNsa3Nw
ZWMsIHZvaWQgKmRhdGEpCj4+PiArewo+Pj4gK8KgwqDCoMKgwqDCoCBzdHJ1Y3QgcW1wX3BjaWUg
KnFtcCA9IGRhdGE7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIC8qIFN1cHBvcnQgbGVnYWN5IGJp
bmRpbmdzICovCj4+PiArwqDCoMKgwqDCoMKgIGlmICghY2xrc3BlYy0+YXJnc19jb3VudCkKPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAmcW1wLT5waXBlX2Nsa19maXhl
ZC5odzsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqAgc3dpdGNoIChjbGtzcGVjLT5hcmdzWzBdKSB7
Cj4+PiArwqDCoMKgwqDCoMKgIGNhc2UgUU1QX1BDSUVfUElQRV9DTEs6Cj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gJnFtcC0+cGlwZV9jbGtfZml4ZWQuaHc7Cj4+PiAr
wqDCoMKgwqDCoMKgIGNhc2UgUU1QX1BDSUVfUEhZX0FVWF9DTEs6Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gJnFtcC0+YXV4X2Nsa19maXhlZC5odzsKPj4+ICvCoMKg
wqDCoMKgwqAgfQo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCByZXR1cm4gRVJSX1BUUigtRUlOVkFM
KTsKPj4+ICt9Cj4+Cj4+IENhbiB3ZSB1c2Ugb2ZfY2xrX2h3X29uZWNlbGxfZ2V0KCkgaW5zdGVh
ZD8gSSB0aGluayBpdCBldmVuIHNob3VsZCBiZQo+PiBwb3NzaWJsZSB0byB1c2Ugb25lY2VsbCBm
b3IgYm90aCBjYXNlcywgaXQgd2lsbCBsb29rIGF0IHRoZSBmaXJzdCBhcmcsCj4+IHdoaWNoIHdp
bGwgYmUgMCBpbiBjYXNlIG9mICNjbG9jay1jZWxscyBlcXVhbCB0byAwLgo+IAo+IExldCBtZSBp
bnZlc3RpZ2F0ZSBpZiBpdCdzIHBvc3NpYmxlCgpPaywgaXQgd291bGQgd29yayBidXQgaXQgd291
bGQgcmVxdWlyZSBidWlsZGluZyBhIGNsa19od19vbmVjZWxsX2RhdGEgYSBydW50aW1lLAp3aGls
ZSB3ZSBjb3VsZCBzaW1wbHkgcHJvdmlkZSB0aGlzIHFtcF9wY2llX2Nsa19od19nZXQoKSBhbmQg
YXZvaWQgcnVudGltZSAyIGFsbG9jYXRpb25zLgoKSSdtIG5vdCBzdXJlIGl0J3Mgd29ydGggaXQu
CgpOZWlsCgo+IAo+Pgo+Pj4gKwo+Pj4gwqAgc3RhdGljIGludCBxbXBfcGNpZV9yZWdpc3Rlcl9j
bG9ja3Moc3RydWN0IHFtcF9wY2llICpxbXAsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4+PiDC
oCB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIGludCByZXQ7Cj4+PiBAQCAtMzY4OSw2ICszNzUxLDE0
IEBAIHN0YXRpYyBpbnQgcW1wX3BjaWVfcmVnaXN0ZXJfY2xvY2tzKHN0cnVjdCBxbXBfcGNpZSAq
cW1wLCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wCj4+PiDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQp
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4KPj4+
ICvCoMKgwqDCoMKgwqAgaWYgKHFtcC0+Y2ZnLT5hdXhfY2xvY2tfcmF0ZSkgewo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gcGh5X2F1eF9jbGtfcmVnaXN0ZXIocW1wLCBu
cCk7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+PiAr
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZGV2bV9vZl9jbGtfYWRk
X2h3X3Byb3ZpZGVyKHFtcC0+ZGV2LCBxbXBfcGNpZV9jbGtfaHdfZ2V0LCBxbXApOwo+Pj4gK8Kg
wqDCoMKgwqDCoCB9Cj4+PiArCj4+PiDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBkZXZtX29mX2Ns
a19hZGRfaHdfcHJvdmlkZXIocW1wLT5kZXYsIG9mX2Nsa19od19zaW1wbGVfZ2V0LAo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnFtcC0+cGlwZV9jbGtfZml4ZWQuaHcpOwo+Pj4g
wqAgfQo+Pj4KPj4+IC0tIAo+Pj4gMi4zNC4xCj4+Pgo+Pj4KPj4KPj4KPiAKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
