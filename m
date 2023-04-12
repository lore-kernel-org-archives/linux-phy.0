Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67C67C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 13:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4Gg2PFvAyEeoxCDMtaYARqpdJ7B+ELIswpHcl+ynf0=; b=bx36iDtbc2ShFl
	/WHxCPvezENWE6BjAVS6EkeG88msb/fBFXQIdmwLRckemkS+4nJquP8GmEFcnvyiQk45k3gDcBbiN
	ynUYdiCuRbRDi8687kojD45VBSbaASA0XCw2IwTFxvZdlALsMsBbks1djbb2g85WIDEKqEG2Zxl5A
	WOLp7h5nVPRwhms4f/vDWPzZpLjsJuBljZfB8dko/uUGO5JQjRbVZ3R7SRG6XyQIyz7CkpYjC6LBn
	SBsywTZGTfJUpr/Kbnt6uo7mv0XQIWDMLZ/6AJY4PKzifi40iiO7U8EtBH2XFrYWea1/yxn4ODhRX
	k+A7AB52NuSYXeR/WYig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaHd-003HeW-09;
	Wed, 12 Apr 2023 13:13:09 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaHW-003HN4-29
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 13:13:05 +0000
Received: by mail-wm1-x32f.google.com with SMTP id i8-20020a05600c354800b003ee93d2c914so7773114wmq.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 06:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1681305170; x=1683897170;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IsrkVPeKsaynFnbWlBbnoqSaEozGzCnZBk6Qj0AOkSA=;
        b=ssqrDy/2cLPJMN/UfNNxohNjADmsWrmIPazYKu4Ca3VT51kMGJqUU1fvWcWP4RjuZo
         4dF+jf6yXYovywxAeb9lSaPiNCt6S4eT3K+uf9VRCmYJmFdY8L41VcIutelklqmDsd6V
         qEQiJk6+v2YoizYOHRkf0dteFBK+5GWCvEXstGpl1jIPIMOXUsz7nnNubKdh5OvNHnOL
         aDF6VeDl9OZ8cI5sC0EVKynLDlBXTOguFMXJZ/LRchX+pbtIPKdlFgmkzwneaoW2z/GQ
         VQFB2AhqMthknYvrUs8GSB/XmaDK1dHZobdQvl+1Y43TnONYn2GITk4eWX+S3A94HX6O
         2rYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681305170; x=1683897170;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IsrkVPeKsaynFnbWlBbnoqSaEozGzCnZBk6Qj0AOkSA=;
        b=6KBOtXnKAxhn/jbV563acch2VzgmYLX3pDznI/5mzinxykirH/mg2MclWLTPI25EKY
         WT5dAKQWrm3KA1cXhlgB4wrAhLAlTbZegoJ2glBevFAcpr0uHaq2Xl8qSEPchvVltRYt
         3Uh3+D9fuVWivsJiMDkYtieGRilLB63u8uk2VgEPg80NjuqK+rZ1udbml8ouvAi74pMj
         zXOtBnm28tv32CaRxI6Axa2VaPHwpuAa7MN5IHknwf6bQpq+J9fA2tZkB+L04Xed2rHE
         3gOAeJc5nDZsbhgXG+EogG8Q6erGiSb33cwNAAgLn+r8+VLeCqjgL2155fsqNyITGs2c
         ropw==
X-Gm-Message-State: AAQBX9dFgclBg3aoRsd08Sot/7UQJAcCXyh9oZ6Zwb4+EPHoDeL3AlfD
	rU2wiYSgEOg1i5CzL6tyqdvOWg==
X-Google-Smtp-Source: AKy350ZBjsJyLl7Rt2Og/2cr2DuEAVD7N0GXPO8YRPue1Xvb87vVf08FN6CXsl6Q/928lyD+Npa9JA==
X-Received: by 2002:a05:600c:2142:b0:3ef:62cd:1ef with SMTP id v2-20020a05600c214200b003ef62cd01efmr4545069wml.25.1681305170583;
        Wed, 12 Apr 2023 06:12:50 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id z12-20020a7bc7cc000000b003ee63fe5203sm2311867wmk.36.2023.04.12.06.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 06:12:50 -0700 (PDT)
Message-ID: <7e53c0b1-3aed-da08-5c57-800ac2277bc6@baylibre.com>
Date: Wed, 12 Apr 2023 15:12:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 02/27] dt-bindings: phy: mediatek,dsi-phy: Add compatible
 for MT6795 Helio X10
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-3-angelogioacchino.delregno@collabora.com>
 <20684378-cf3e-0299-d390-287b7bafbda5@baylibre.com>
 <eb770f19-ada5-81bb-5ea3-798edabca70f@collabora.com>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <eb770f19-ada5-81bb-5ea3-798edabca70f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_061302_732034_775466E2 
X-CRM114-Status: GOOD (  15.16  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTIvMDQvMjAyMyAxNTowMywgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4g
SWwgMTIvMDQvMjMgMTQ6NTksIEFsZXhhbmRyZSBNZXJnbmF0IGhhIHNjcml0dG86Cj4+IE9uIDEy
LzA0LzIwMjMgMTM6MjcsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3RlOgo+Pj4gQWRk
IGEgY29tcGF0aWJsZSBzdHJpbmcgZm9yIE1lZGlhVGVrIEhlbGlvIFgxMCBNVDY3OTU6IHRoaXMg
U29DIHVzZXMKPj4+IHRoZSBzYW1lIERTSSBQSFkgYXMgTVQ4MTczLgo+Pj4KPj4+IFNpZ25lZC1v
ZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIAo+Pj4gPGFuZ2Vsb2dpb2FjY2hpbm8u
ZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gwqAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5LnlhbWwgfCA0ICsrKysKPj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IAo+Pj4g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLGRzaS1waHku
eWFtbCAKPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRl
ayxkc2ktcGh5LnlhbWwKPj4+IGluZGV4IDI2ZjJiODg3Y2ZjMS4uYTlmNzgzNDRlZmRiIDEwMDY0
NAo+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRl
ayxkc2ktcGh5LnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvbWVkaWF0ZWssZHNpLXBoeS55YW1sCj4+PiBAQCAtMjQsNiArMjQsMTAgQEAgcHJvcGVy
dGllczoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBlbnVtOgo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC0gbWVkaWF0ZWssbXQ3NjIzLW1pcGktdHgKPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgLSBjb25zdDogbWVkaWF0ZWssbXQyNzAxLW1pcGktdHgKPj4+ICvCoMKg
wqDCoMKgIC0gaXRlbXM6Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIC0gZW51bToKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIG1lZGlhdGVrLG10Njc5NS1taXBpLXR4Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IG1lZGlhdGVrLG10ODE3My1taXBpLXR4Cj4+Cj4+IEFG
QUlLLCBpdCBzaG91bGQgYmU6Cj4+IMKgwqDCoMKgwqDCoCAtIGl0ZW1zOgo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIGNvbnN0OiBtZWRpYXRlayxtdDY3OTUtbWlwaS10eAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtbWlwaS10eAo+Pgo+PiBTaW5jZSBp
dCBpc24ndCByZXNwZWN0ZWQgYWJvdmUgZm9yIG10NzYyMywgaXQgbWF5IGJlIHRvbGVyYXRlZC4K
Pj4gUGxlYXNlLCB0YWtlIHRoaXMgY29tbWVudCBhcyBhIHN1Z2dlc3Rpb24sIGlzbid0IGEgTkFL
IGZyb20gbWUuCj4+Cj4gCj4gRmlyc3Qgb2YgYWxsLCBUaGFua3MhCj4gSSB3YW50IHRvIGV4cGxh
aW4sIHRob3VnaCwgdGhlIHJlYXNvbiBmb3IgdGhhdC4KPiAKPiBJZiB5b3UgY2hlY2sgYWxsIHRo
ZSBjb21taXRzLCBvbiBzb21lIEkgZGlkIGl0IGFzIHlvdSBqdXN0IHByb3Bvc2VkLCB3aGlsZQo+
IG9uIHNvbWUgb3RoZXJzIEkgZGlkIGl0IHdpdGggYW4gZW51bSBiZWZvcmUgY29uc3Q6IHRoYXQn
cyBzaW1wbHkgYmVjYXVzZSBJCj4gKnRvdGFsbHkgZXhwZWN0KiBzb21lIHRvIGdyb3csIHdoaWxl
IG90aGVycyAoY29uc3QgLSBjb25zdCkgSSB3YXMgZWl0aGVyCj4gdW5zdXJlLCBvciB0b3RhbGx5
ICpub3QqIGV4cGVjdGluZyB0aGVtIHRvIGdyb3cgc29vbiEKCgpUaGF0J3Mgd2hhdCBJIHRob3Vn
aHQuIElNSE8sIGlmIHNvbWVvbmUgYWRkIGFub3RoZXIgY29tcGF0IGxhdGVyLCBoZSAKd2lsbCBi
ZSBvbiBjaGFyZ2UgdG8gY2hhbmdlIHRoZSBjb25zdCBieSBlbnVtIGZyb250IG9mIHlvdXIgCiJt
ZWRpYXRlayxtdDY3OTUtbWlwaS10eCIuIEJ1dCBteSBvcGluaW9uIGlzIHByb2JhYmx5IG5vdCB0
aGUgbW9zdCBwb3B1bGFyLgoKSSB3aWxsIG5vdCBtYWtlIHRoZSBzYW1lIGZlZWRiYWNrIGZvciB0
aGUgb3RoZXIgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcy4KCi0tIApSZWdhcmRzLApBbGV4YW5kcmUK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
