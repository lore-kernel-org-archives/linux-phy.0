Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E47EECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 10:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJc/+zOOcKURn2BFqSGMEsn4r2E8p7jBzqhkKb+n5mE=; b=mr9gRnfVlHos23
	rphSONagHKxuggn4skJ1C+suS6pU/E/Ux8BOSzEHtuJxPbgh5MJmSA7YnG9J0VnV5PsUepoLJ0nzz
	3OONiRSP7CY21EwHHlenS71E+JyufSCFOfAkqiZ/z7xjVxBbm7gRi76B8Zy4iLEz9AhcbZVgyX3oU
	LhoWbUpd6iWkQ4hzoBHp7MVqVUHvUoHyvPvFSfje8gi6Djqjr+RBmc0n7usRXRpGeUHvdodYgghLW
	hh1G1z6FFrY/45fTurPAoh+iCOkDR8kPmcPk112tvC8YBJWOexkY5Jvk7XyoF0b7ZmIJjWKih6Jty
	E+f8Xxbkb2W3pvf4aV4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWb5h-00FJXo-Sy; Fri, 09 Sep 2022 10:18:29 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWb5f-00FJWZ-LY
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 10:18:29 +0000
Received: by mail-lf1-x130.google.com with SMTP id u18so1872502lfo.8
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 03:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=/VudPBuUg8Yi2H0fyp4XXItQAWSGnhKI9+QIvSj4aPo=;
        b=SjK8642m+kC7L50jtrJprb6TubEpjuGV5QEEpGgw68uKQnlmEOHp0TpvHh5bZpVNEr
         rcO5WBcWwwONmzk1ETvAo+E7YImhsx7Kc3GR8qgDXM+MtXgUCFDVynI9eSqiNbAo5j5K
         iUE5CPFt5lMkjgbRv0Ryjp2qqWKSWHtOxTy4o62eplLuFo6GDYn74kkFZEwS4kR/Y6XS
         wH6la7j11eYaOK9DXmLzs0IVy5ooCLNv8uluaXu/Z74F3Fn4Ny2epqwSXSEOH42dtmT0
         +6SgKOkTAo8m3FiBSLCprgCQ2pSDKXey2HUG1wx+EiwaeSk0jZvdfDSmWdF0z3YtYn8I
         WLSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=/VudPBuUg8Yi2H0fyp4XXItQAWSGnhKI9+QIvSj4aPo=;
        b=pTFXbf4ltICkaF5qFgRYyqrAE1SKupkZRapLg5917CedOa8LC6kEdlYWHs4M+TLQUo
         7NLYZpLsGJDHNU/Q8HJqAhV6UEH8h337JvGcj2uHE8SZd85N0hL5W59Kmgik6S9jKQb7
         zsMkTyAYt39kDuLYl45RP24vFg/R8X0oMD2LL4SUdXQOPm18yFKnmT4tEXNIE8ZcctUj
         EwJV3KPjq93actz/cAXsYvWYOBlx1wW5JjIy/N8Ft/QXle9KbbV6JQ+z4EbzPxRAseAE
         zEZqvuVQ0doKipKXOxk+xhOZylNi9+GgOdg6c6OouQlpdZKZ2mElg1Uze6A5DDC3k/d/
         Zt6g==
X-Gm-Message-State: ACgBeo16fX45h9JEwNc4+L6IfpI3QqB+rqqzBHI55KivZ/thVWnJ96TY
	ilUuEiT1cqdeVFJcQ1Sirj4HHw==
X-Google-Smtp-Source: AA6agR7TrZ2dYc7MCPiwqkYmLv9B4ObWokWYVKngs6cXjyE23B6nKRTFuKspSwXlWLoWmEatMQ/LOg==
X-Received: by 2002:a05:6512:159a:b0:492:d0c8:aec1 with SMTP id bp26-20020a056512159a00b00492d0c8aec1mr4455606lfb.275.1662718703748;
        Fri, 09 Sep 2022 03:18:23 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b00261b9ccb18esm27383ljl.10.2022.09.09.03.18.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 03:18:23 -0700 (PDT)
Message-ID: <7f002ba4-1e1e-300d-062e-db93390b0461@linaro.org>
Date: Fri, 9 Sep 2022 13:18:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: msm8996: add #clock-cells and XO
 clock to the HDMI PHY node
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
 <20220704161148.814510-4-dmitry.baryshkov@linaro.org>
 <6474b61e-69d8-dbcb-f638-7729ec3dee31@linaro.org>
In-Reply-To: <6474b61e-69d8-dbcb-f638-7729ec3dee31@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_031827_757484_5D8C6228 
X-CRM114-Status: GOOD (  15.65  )
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

T24gMjYvMDgvMjAyMiAxNzoyNSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiAwNC8wNy8y
MDIyIDE5OjExLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+PiBBZGQgI2Nsb2NrLWNlbGxzIHBy
b3BlcnR5IHRvIHRoZSBIRE1JIFBIWSBkZXZpY2Ugbm9kZSB0byBsZXQgb3RoZXIgbm9kZXMKPj4g
cmVzb2x2ZSB0aGUgaGRtaXBsbCBjbG9jay4gV2hpbGUgd2UgYXJlIGF0IGl0LCBhbHNvIGFkZCB0
aGUgWE8gY2xvY2sgdG8KPj4gdGhlIGRldmljZSBub2RlLgo+Pgo+PiBBY2tlZC1ieTogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+PiBTaWduZWQt
b2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4g
Cj4gQmpvcm4sIEknbSBwaWNraW5nIHRoZSBwYXRjaGVzIDEsMiBpbnRvIG1zbS1uZXh0LiBDb3Vs
ZCB5b3UgcGxlYXNlIHBpY2sgCj4gdGhpcyBwYXRjaCBpbnRvIHlvdXIgZHRzLWZvci02LjE/CgpB
Z2FpbiwgZ3JhY2lvdXMgcGluZy4KCj4gCj4+IC0tLQo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vbXNtODk5Ni5kdHNpIHwgOCArKysrKystLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL21zbTg5OTYuZHRzaSAKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vbXNtODk5Ni5kdHNpCj4+IGluZGV4IDI1ZDZiMjZmYWI2MC4uYjcyMzg1ZmZlY2M2IDEwMDY0
NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vbXNtODk5Ni5kdHNpCj4+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tc204OTk2LmR0c2kKPj4gQEAgLTEwNDksOSArMTA0
OSwxMyBAQCBoZG1pX3BoeTogaGRtaS1waHlAOWEwNjAwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImhkbWlfcGh5IjsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8Jm1tY2MgTURTU19BSEJfQ0xLPiwK
Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX0hE
TUlfQ0xLUkVGX0NMSz47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwmZ2NjIEdDQ19IRE1JX0NMS1JFRl9DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8JnhvX2JvYXJkPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJpZmFjZSIsCj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicmVmIjsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJyZWYiLAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInhvIjsKPj4gKwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNjbG9jay1jZWxscyA9IDwwPjsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+IAoKLS0gCldpdGggYmVzdCB3aXNoZXMK
RG1pdHJ5CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
