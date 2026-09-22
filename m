Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89B4AC982FA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 12:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rj26MLUlyCMXRxBriV1L24XUznKzIGALbbmM8Ioni8U=; b=TZyLxmsOZ4mc+cpqlBm8IddklS
	CFj9ISpCMCeMK6/MDTIBWpE35eE0kq6jDAInnm/sVw+llG+vs/5Hc9M3GUc/arBCUZfaEEsaeDhZp
	LAAW4wyN9AD8zQk9i1EQ3EjKmtQC7ko9PZpckdETb97yjie3rWAe19TJ/so9EWSw2gBbWZb8Daqof
	dkDhfsufAkAKhFXAgFCMXNkak5Xjxz3QKsFow6MRH26vFAXyo/xPidRrbqN9SFFNgVZ2GaDPO0QYr
	SUG4n4vlGMWBR0sbeUtiVTEVeYTgJ4rayMGDywYmMWlvXjY7oib74C6HAmIxMHzip8uIMtKtUH6BP
	rPJEvZNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zSr-00000005I53-12TT;
	Tue, 22 Sep 2026 12:19:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zSp-00000005I4l-1DRG
	for linux-phy@bombadil.infradead.org;
	Tue, 22 Sep 2026 12:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:Reply-To:From:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description;
	bh=K5u3EIzpPsS1zIA0D9Df1lz7j9vWVWGBTpUVoDk4tGw=; b=HdGU8d+ahHCcrkBsKwWU/ntlqk
	KRD+WZwv6ktmWmFiKVUivG/h4BFnJGToC3IHJPrPyr4MbD1DsNK6EEcAYzs07JgP69mZAe5k1bB/8
	cNVy6UnMfzf8b/mShcaeM6ySaTpG7C38rbIp86dc3htah+5op6CmPE2Wmt4RyQkdlZDHX9WpTY54I
	sbHMDNWsM03edd7Q95WxM2rT/ChKk1mC/IM/ejKgjm9zpUSzP98hfX6LBbXphcbVwGzui9zEvt/vf
	RCE0WTWB6hxznre3iVg269HrdvtN8QKHD0RUfdU0RU6MTwLkdiIvXlSTezmZMSVzQSubdCTooFlKQ
	/WLCnRAw==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8zSl-0000000DXRL-3h7e
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 12:19:09 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49d097b4939so21779825e9.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 05:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1790079545; x=1790684345; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=K5u3EIzpPsS1zIA0D9Df1lz7j9vWVWGBTpUVoDk4tGw=;
        b=zjKd/HbUSpl7JNj1+Sg+jVHXzpBVvBKHx99nk41+rtQOmPi/VwV2tZKNTJQ35sTCWY
         Mxf6yyq+QGko0meemqwk4I4cesnhTRldEJn2oybVHMpk/bdO/bcgT5GbqurIHMeAjfl2
         5iZysx8raU4hxEjekWv2XbXL4BayBgV8u1qYxKTVgjw1AZh6JJmrSRSK3YZ6gpp9wTp1
         EnvhSnoSQdO4z/NEDyKQrhcHnTCoMhgBQXWuUxSejPrWxSwIXJ5O112nOD3AAmczErz0
         BnjKT4L/mge30xuo5S5mwRIV3RMHx/VVuh6joRwm9hFYunHlmtYXhhwRH2Jv1KAJBE7v
         1O4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790079545; x=1790684345;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=K5u3EIzpPsS1zIA0D9Df1lz7j9vWVWGBTpUVoDk4tGw=;
        b=yP84otzg537BdOSkH1H4l+a8+5TOO+82Hm8lQwMZSJXiKMtEAdWYvFFUFUjGvzSTMG
         GUUjmha/oRgAXK/lplUHhlivhT+Sn83mxfhN5ZUxej7WtdoDr8xEUm+ww5PZBXtKRYTA
         osYbnR7DOTLCm9mZIjBksmjdwS+IjVGJv2B1KdMnayyOoAu2YBJAXpkTaJogvdpK4/cc
         kPB62cIsdvD8tN1XIh6OdgNu4g7TfMpZTVKwmZrMPPQjQ+NdMrw4wjpDUfxvhes+c0m8
         8fSUmeHq3i0UhzvwFz7+DUptxkyjxrr5/Vu8yklxw0oAunLYjw/R3luFdHxUC0qZNdcr
         L7NA==
X-Forwarded-Encrypted: i=1; AKwUvBw3goD2ZncQw5c5h8ofN1VPqdn9dJEQ76CZjUegURXfc6+eAUf99oDUl5hRxWGTx8WbJEOZcVVbbtQ=@lists.infradead.org
X-Gm-Message-State: AFuF++li0HDNfia0N/BcHhCCCa5W8lb7/EZdzNQXUgJRsqp25R+JvsH2
	/QKOEuSSrp5pwL4gLG8WZdioNduPxeE3eQYmMLb7bcd8vEMJQz1HP/65aNcSYq1EKOw=
X-Gm-Gg: AYBFou00YT8FA334zxYeshSw7KkRJraPegLAJvRY4GWP3cD26eyJ3pDwhGd+kGYsz3Y
	vhFoUn5eiZaFjXLdNRtcM5mpHyCW6hHVtd5ys7mGSj/bsrTOxJ/wclrzy0U0HFPDoDcG8+8A9qB
	DOZsaTxS0fzs/ZRUM3IkZHF6LYFjRDg317tY1jDUhv97eZZ04jbMMPUfiewRY6EIIx6nFsj4zW9
	bK86yQRdO3kjQb/SadeTh627xVIrbUojL8p6NjLYXuWGgv8rUzr1XweMqS/ajUriCVazySjooEX
	TkmIVfSUuml0LFKUsvSUPNpHcMse8v5OxWjQPuy5xmk0+sICh5rEtzqukB/ed4r5RN8AlpABTC1
	JEEqw+pBKH0/e4cJSYfMViuaANXWP8Ri3OLcQk3iyFW7skX1PKRngiDsyGgv09/CK+ZpI6TfqCY
	IQo/cTMyPsOD4C/YE9DeWFsUVZWEFv/JKN2B8iOQQPteySJ5hrt8vnxK0QvPkB8kMJHFlnOMR5O
	shgWa22o79mre5OkOfS3oNnV3+jDx3EsG09pXS58N4zsDkxJBzxiA==
X-Received: by 2002:a05:600c:6088:b0:49d:1fd8:b874 with SMTP id 5b1f17b1804b1-49fd6f0406cmr64899245e9.19.1790079544988;
        Tue, 22 Sep 2026 05:19:04 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:ddd0:8cc7:9887:fa82? ([2a01:e0a:106d:1080:ddd0:8cc7:9887:fa82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48862775412sm4849378f8f.10.2026.09.22.05.19.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2026 05:19:04 -0700 (PDT)
Message-ID: <5cadf2e6-9dbb-4320-b866-cf2fad599c41@linaro.org>
Date: Tue, 22 Sep 2026 14:19:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v20 2/6] phy: core: Add phy_get_by_of_node()
To: johannes.goede@oss.qualcomm.com,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-2-dc244e124e71@linaro.org>
 <211caa95-dfbc-427d-8ce8-49cc76c24124@linaro.org>
 <49c7b4d8-a8ec-44e1-ab06-220cf3698ea0@oss.qualcomm.com>
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
In-Reply-To: <49c7b4d8-a8ec-44e1-ab06-220cf3698ea0@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_131908_179562_32211820 
X-CRM114-Status: GOOD (  28.40  )
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

T24gOS8xOC8yNiAxNzozNSwgam9oYW5uZXMuZ29lZGVAb3NzLnF1YWxjb21tLmNvbSB3cm90ZToK
PiBIaSBOZWlsLAo+IAo+IE9uIDE4LVNlcC0yNiAxNjoxMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6
Cj4+IE9uIDkvMTgvMjYgMTU6NTYsIEJyeWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+PiBBZGQgbmV3
IGZ1bmN0aW9uIHBoeV9nZXRfYnlfb2Zfbm9kZSgpIGFsbG93aW5nIGxvb2t1cCBvZiBhIHBoeSBi
eQo+Pj4gZGV2aWNlX25vZGUuIFNlcGFyYXRlcyBleGlzdGluZyBsb2dpYyBpbiBfb2ZfcGh5X2dl
dCgpIGludG8gYW4gaW50ZXJuYWwKPj4+IGhlbHBlciBtZXRob2QgX29mX3BoeV9nZXRfd2l0aF9h
cmdzKCkgdG8gYWxsb3cgZm9yIHJldXNlIGluIG5ldyBtZXRob2QuCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogQnJ5YW4gTydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+Cj4+PiAt
LS0KPj4+ICDCoCBkcml2ZXJzL3BoeS9waHktY29yZS5jwqAgfCA4MyArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4+PiAgwqAgaW5jbHVkZS9saW51eC9w
aHkvcGh5LmggfMKgIDYgKysrKwo+Pj4gIMKgIDIgZmlsZXMgY2hhbmdlZCwgNzEgaW5zZXJ0aW9u
cygrKSwgMTggZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Bo
eS1jb3JlLmMgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4+PiBpbmRleCA4OWFkZGQ3MzJiZmYz
Li40MmMyN2EyYjQ1MTU5IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+
Pj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+Pj4gQEAgLTYwNiw2ICs2MDYsMzggQEAg
aW50IHBoeV92YWxpZGF0ZShzdHJ1Y3QgcGh5ICpwaHksIGVudW0gcGh5X21vZGUgbW9kZSwgaW50
IHN1Ym1vZGUsCj4+PiAgwqAgfQo+Pj4gIMKgIEVYUE9SVF9TWU1CT0xfR1BMKHBoeV92YWxpZGF0
ZSk7Cj4+PiAgwqAgKy8qKgo+Pj4gKyAqIF9vZl9waHlfZ2V0X3dpdGhfYXJncygpIC0gbG9va3Vw
IGFuZCBvYnRhaW4gYSByZWZlcmVuY2UgdG8gYSBwaHkgYnkgb2ZfcGhhbmRsZV9hcmdzCj4+PiAr
ICogQGFyZ3M6IG9mX3BoYW5kbGVfYXJncyB0byB0aGUgcGh5Cj4+PiArICoKPj4+ICsgKiBSZXR1
cm5zOiB0aGUgcGh5IGZyb20gdGhlIHByb3ZpZGVyJ3Mgb2ZfeGxhdGUsIC1FTk9ERVYgaWYgZGlz
YWJsZWQsCj4+PiArICogLUVQUk9CRV9ERUZFUiBpZiB0aGUgcHJvdmlkZXIgaXMgbm90IHlldCBy
ZWdpc3RlcmVkLgo+Pj4gKyAqLwo+Pj4gK3N0YXRpYyBzdHJ1Y3QgcGh5ICpfb2ZfcGh5X2dldF93
aXRoX2FyZ3Moc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqYXJncykKPj4+ICt7Cj4+PiArwqDCoMKg
IHN0cnVjdCBwaHkgKnBoeTsKPj4+ICvCoMKgwqAgc3RydWN0IHBoeV9wcm92aWRlciAqcGh5X3By
b3ZpZGVyOwo+Pj4gKwo+Pj4gK8KgwqDCoCBsb2NrZGVwX2Fzc2VydF9oZWxkKCZwaHlfcHJvdmlk
ZXJfbXV0ZXgpOwo+Pj4gKwo+Pj4gK8KgwqDCoCBwaHlfcHJvdmlkZXIgPSBvZl9waHlfcHJvdmlk
ZXJfbG9va3VwKGFyZ3MtPm5wKTsKPj4+ICvCoMKgwqAgaWYgKElTX0VSUihwaHlfcHJvdmlkZXIp
IHx8ICF0cnlfbW9kdWxlX2dldChwaHlfcHJvdmlkZXItPm93bmVyKSkKPj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKPj4+ICsKPj4+ICvCoMKgwqAgaWYg
KCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKGFyZ3MtPm5wKSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKg
IGRldl93YXJuKHBoeV9wcm92aWRlci0+ZGV2LCAiUmVxdWVzdGVkIFBIWSBpcyBkaXNhYmxlZFxu
Iik7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcGh5ID0gRVJSX1BUUigtRU5PREVWKTsKPj4+ICvCoMKg
wqDCoMKgwqDCoCBnb3RvIG91dF9wdXRfbW9kdWxlOwo+Pj4gK8KgwqDCoCB9Cj4+PiArCj4+PiAr
wqDCoMKgIHBoeSA9IHBoeV9wcm92aWRlci0+b2ZfeGxhdGUocGh5X3Byb3ZpZGVyLT5kZXYsIGFy
Z3MpOwo+Pj4gKwo+Pj4gK291dF9wdXRfbW9kdWxlOgo+Pj4gK8KgwqDCoCBtb2R1bGVfcHV0KHBo
eV9wcm92aWRlci0+b3duZXIpOwo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gcGh5Owo+Pj4gK30K
Pj4+ICsKPj4+ICDCoCAvKioKPj4+ICDCoMKgICogX29mX3BoeV9nZXQoKSAtIGxvb2t1cCBhbmQg
b2J0YWluIGEgcmVmZXJlbmNlIHRvIGEgcGh5IGJ5IHBoYW5kbGUKPj4+ICDCoMKgICogQG5wOiBk
ZXZpY2Vfbm9kZSBmb3Igd2hpY2ggdG8gZ2V0IHRoZSBwaHkKPj4+IEBAIC02MjAsOCArNjUyLDcg
QEAgRVhQT1JUX1NZTUJPTF9HUEwocGh5X3ZhbGlkYXRlKTsKPj4+ICDCoCBzdGF0aWMgc3RydWN0
IHBoeSAqX29mX3BoeV9nZXQoc3RydWN0IGRldmljZV9ub2RlICpucCwgaW50IGluZGV4KQo+Pj4g
IMKgIHsKPj4+ICDCoMKgwqDCoMKgIGludCByZXQ7Cj4+PiAtwqDCoMKgIHN0cnVjdCBwaHlfcHJv
dmlkZXIgKnBoeV9wcm92aWRlcjsKPj4+IC3CoMKgwqAgc3RydWN0IHBoeSAqcGh5ID0gTlVMTDsK
Pj4+ICvCoMKgwqAgc3RydWN0IHBoeSAqcGh5Owo+Pj4gIMKgwqDCoMKgwqAgc3RydWN0IG9mX3Bo
YW5kbGVfYXJncyBhcmdzOwo+Pj4gIMKgIMKgwqDCoMKgwqAgbG9ja2RlcF9hc3NlcnRfaGVsZCgm
cGh5X3Byb3ZpZGVyX211dGV4KTsKPj4+IEBAIC02MzcsMjIgKzY2OCw3IEBAIHN0YXRpYyBzdHJ1
Y3QgcGh5ICpfb2ZfcGh5X2dldChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBpbnQgaW5kZXgpCj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0X3B1dF9ub2RlOwo+Pj4gIMKgwqDCoMKgwqAg
fQo+Pj4gIMKgIC3CoMKgwqAgcGh5X3Byb3ZpZGVyID0gb2ZfcGh5X3Byb3ZpZGVyX2xvb2t1cChh
cmdzLm5wKTsKPj4+IC3CoMKgwqAgaWYgKElTX0VSUihwaHlfcHJvdmlkZXIpIHx8ICF0cnlfbW9k
dWxlX2dldChwaHlfcHJvdmlkZXItPm93bmVyKSkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgIHBoeSA9
IEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgZ290byBvdXRfcHV0
X25vZGU7Cj4+PiAtwqDCoMKgIH0KPj4+IC0KPj4+IC3CoMKgwqAgaWYgKCFvZl9kZXZpY2VfaXNf
YXZhaWxhYmxlKGFyZ3MubnApKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgZGV2X3dhcm4ocGh5X3By
b3ZpZGVyLT5kZXYsICJSZXF1ZXN0ZWQgUEhZIGlzIGRpc2FibGVkXG4iKTsKPj4+IC3CoMKgwqDC
oMKgwqDCoCBwaHkgPSBFUlJfUFRSKC1FTk9ERVYpOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIGdvdG8g
b3V0X3B1dF9tb2R1bGU7Cj4+PiAtwqDCoMKgIH0KPj4+IC0KPj4+IC3CoMKgwqAgcGh5ID0gcGh5
X3Byb3ZpZGVyLT5vZl94bGF0ZShwaHlfcHJvdmlkZXItPmRldiwgJmFyZ3MpOwo+Pj4gLQo+Pj4g
LW91dF9wdXRfbW9kdWxlOgo+Pj4gLcKgwqDCoCBtb2R1bGVfcHV0KHBoeV9wcm92aWRlci0+b3du
ZXIpOwo+Pj4gK8KgwqDCoCBwaHkgPSBfb2ZfcGh5X2dldF93aXRoX2FyZ3MoJmFyZ3MpOwo+Pj4g
IMKgIMKgIG91dF9wdXRfbm9kZToKPj4+ICDCoMKgwqDCoMKgIG9mX25vZGVfcHV0KGFyZ3MubnAp
Owo+Pj4gQEAgLTEwMDEsNiArMTAxNywzNyBAQCBzdHJ1Y3QgcGh5ICpkZXZtX29mX3BoeV9nZXRf
YnlfaW5kZXgoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+Pj4g
IMKgIH0KPj4+ICDCoCBFWFBPUlRfU1lNQk9MX0dQTChkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgp
Owo+Pj4gIMKgICsvKioKPj4+ICsgKiBwaHlfZ2V0X2J5X29mX25vZGUoKSAtIGxvb2t1cCBhbmQg
b2J0YWluIGEgcmVmZXJlbmNlIHRvIGEgcGh5IGJ5IGRldmljZV9ub2RlCj4+PiArICogQG5wOiBu
b2RlIGNvbnRhaW5pbmcgdGhlIHBoeQo+Pj4gKyAqCj4+PiArICogUmV0dXJuczogdGhlIHBoeSBh
c3NvY2lhdGVkIHdpdGggdGhlIGRldmljZSBub2RlIG9yIEVSUl9QVFIuCj4+PiArICovCj4+PiAr
c3RydWN0IHBoeSAqcGh5X2dldF9ieV9vZl9ub2RlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4+
PiArewo+Pj4gK8KgwqDCoCBzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzIGFyZ3MgPSB7IC5ucCA9IG5w
LCAuYXJnc19jb3VudCA9IDAgfTsKPj4+ICvCoMKgwqAgc3RydWN0IHBoeSAqcGh5Owo+Pj4gKwo+
Pj4gK8KgwqDCoCBtdXRleF9sb2NrKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwo+Pgo+PiBJIGRvbid0
IHJlYWxseSB1bmRlcnN0YW5kIHRoZSB1c2FnZSBvZiBsb2NrZGVwX2Fzc2VydF9oZWxkKCksIGJ1
dCB3aHkKPj4gZG9lcyBfb2ZfcGh5X2dldCgpIHVzZXMgbG9ja2RlcF9hc3NlcnRfaGVsZCgpIGFu
ZCBoZXJlIHlvdSB1c2UgbXV0ZXhfbG9jaygpCj4+IGxpa2UgYmVmb3JlIHBhdGNoIDEgPwo+IAo+
IEhpLCBub3QgQnJ5YW4gYnV0IEkgY2FuIGFuc3dlciB0aGlzIHF1ZXN0aW9uLgo+IAo+IGxvY2tk
ZXBfYXNzZXJ0X2hlbGQoKSBjaGVjayB0aGF0IHRoZSBtdXRleCBpcyBsb2NrIGFuZCB0cmlnZ2Vy
cwo+IGEgV0FSTigpIHdoZW4gbm90IGhlbGQuCj4gCj4gU28gbG9ja2RlcF9hc3NlcnRfaGVsZCgp
IGlzIHVzZWQgaW4gZnVuY3Rpb25zIHdoaWNoIGV4cGVjdCB0bwo+IGJlIGNhbGxlZCB3aXRoIHRo
ZSBtdXRleCBhbHJlYWR5IGxvY2tlZCwgbGlrZSB0aGUgbmV3Cj4gX29mX3BoeV9nZXRfd2l0aF9h
cmdzKCkgaGVscGVyIHdoaWNoIGlzIGFkZGVkIGhlcmUuCj4gCj4gVGhpcyBuZXcgaGVscGVyIGZh
Y3RvcnMgb3V0IGJpdHMgb2YgX29mX3BoeV9nZXQoKSwgd2hpY2ggaXRzZWxmCj4gYWxyZWFkeSBo
YXMgbG9ja2RlcF9hc3NlcnRfaGVsZCgpLCBidXQgc2luY2UgdGhpcyBuZXcgaGVscGVyCj4gYWxz
byBpcyBkaXJlY3RseSBjYWxsZWQgZnJvbSB0aGUgbmV3IHBoeV9nZXRfYnlfb2Zfbm9kZSgpIGl0
Cj4gaXMgZ29vZCBmb3IgaXQgdG8gYWxzbyBjaGVjayB0aGUgbXV0ZXggaXMgbG9ja2VkIGl0c2Vs
Zi4KPiAKPiBBbmQgc2luY2UgdGhlIG5ldyBwaHlfZ2V0X2J5X29mX25vZGUoKSBjYWxscyB0aGlz
IG5ldyBoZWxwZXIKPiBpdCBtdXN0IGxvY2sgdGhlIG11dGV4Lgo+IAo+IE5vdGUgdGhhdCBfb2Zf
cGh5X2dldCgpIGlzIGFscmVhZHkgYWx3YXlzIGNhbGxlZCB3aXRoIHRoZSBtdXRleAo+IGxvY2tl
ZCBmcm9tIG9mX3BoeV9nZXQoKSwgcGh5X2dldCgpLCBvciBkZXZtX29mX3BoeV9nZXRfYnlfaW5k
ZXgoKS4KCk9rIHRoYW5rcyBmb3IgdGhlIGRldGFpbGVkIGV4cGxhbmF0aW9uLCBJIG1pc3NlZCB0
aGF0ICEKCk5laWwKCj4gCj4gUmVnYXJkcywKPiAKPiBIYW5zCj4gCj4gCj4gCj4gCj4+Cj4+IE5l
aWwKPj4KPj4+ICsKPj4+ICvCoMKgwqAgcGh5ID0gX29mX3BoeV9nZXRfd2l0aF9hcmdzKCZhcmdz
KTsKPj4+ICvCoMKgwqAgaWYgKElTX0VSUihwaHkpKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGdvdG8g
b3V0X3VubG9jazsKPj4+ICsKPj4+ICvCoMKgwqAgaWYgKCF0cnlfbW9kdWxlX2dldChwaHktPm9w
cy0+b3duZXIpKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcGh5ID0gRVJSX1BUUigtRVBST0JFX0RF
RkVSKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIG91dF91bmxvY2s7Cj4+PiArwqDCoMKgIH0K
Pj4+ICsKPj4+ICvCoMKgwqAgZ2V0X2RldmljZSgmcGh5LT5kZXYpOwo+Pj4gKwo+Pj4gK291dF91
bmxvY2s6Cj4+PiArwqDCoMKgIG11dGV4X3VubG9jaygmcGh5X3Byb3ZpZGVyX211dGV4KTsKPj4+
ICsKPj4+ICvCoMKgwqAgcmV0dXJuIHBoeTsKPj4+ICt9Cj4+PiArRVhQT1JUX1NZTUJPTF9HUEwo
cGh5X2dldF9ieV9vZl9ub2RlKTsKPj4+ICsKPj4+ICDCoCAvKioKPj4+ICDCoMKgICogcGh5X2Ny
ZWF0ZSgpIC0gY3JlYXRlIGEgbmV3IHBoeQo+Pj4gIMKgwqAgKiBAZGV2OiBkZXZpY2UgdGhhdCBp
cyBjcmVhdGluZyB0aGUgbmV3IHBoeQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcGh5
L3BoeS5oIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LmgKPj4+IGluZGV4IGVhNDc5NzVlMjg4YWUu
LjcxYzJlMTYzOTcxMzAgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+
Pj4gKysrIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LmgKPj4+IEBAIC0yODQsNiArMjg0LDcgQEAg
c3RydWN0IHBoeSAqZGV2bV9vZl9waHlfb3B0aW9uYWxfZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwg
c3RydWN0IGRldmljZV9ub2RlICpucCwKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjb25zdCBjaGFyICpjb25faWQpOwo+Pj4gIMKgIHN0cnVjdCBwaHkg
KmRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbnAsCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaW50IGluZGV4KTsKPj4+ICtzdHJ1Y3QgcGh5ICpwaHlfZ2V0X2J5X29mX25vZGUoc3Ry
dWN0IGRldmljZV9ub2RlICpucCk7Cj4+PiAgwqAgdm9pZCBvZl9waHlfcHV0KHN0cnVjdCBwaHkg
KnBoeSk7Cj4+PiAgwqAgdm9pZCBwaHlfcHV0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHBo
eSAqcGh5KTsKPj4+ICDCoCB2b2lkIGRldm1fcGh5X3B1dChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBwaHkgKnBoeSk7Cj4+PiBAQCAtNDkzLDYgKzQ5NCwxMSBAQCBzdGF0aWMgaW5saW5lIHN0
cnVjdCBwaHkgKmRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+
PiAgwqDCoMKgwqDCoCByZXR1cm4gRVJSX1BUUigtRU5PU1lTKTsKPj4+ICDCoCB9Cj4+PiAgwqAg
K3N0YXRpYyBpbmxpbmUgc3RydWN0IHBoeSAqcGh5X2dldF9ieV9vZl9ub2RlKHN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbnApCj4+PiArewo+Pj4gK8KgwqDCoCByZXR1cm4gRVJSX1BUUigtRU5PU1lTKTsK
Pj4+ICt9Cj4+PiArCj4+PiAgwqAgc3RhdGljIGlubGluZSB2b2lkIG9mX3BoeV9wdXQoc3RydWN0
IHBoeSAqcGh5KQo+Pj4gIMKgIHsKPj4+ICDCoCB9Cj4+Pgo+Pgo+Pgo+IAoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
