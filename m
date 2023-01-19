Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF7ABC46467
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 15:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=da9x5n4EK5uzlEgtPuYyameSxFG0i+xblMcKZx8gAp8=; b=KJeDCE0dAWoSVa
	/SvtZd6aIenjHAuTlcjslEv4sZ1UeG6+FckdpktyTCEWppl8kq+f2aLcHhwHFf2wnJbtqSRs6EZla
	kF9Ye53vQiIrAxOiGxp9fgIehcfrOQ58t59ww+3EZR15gl75PsCI9kLFsVEGTMaxS+f8iRqYDBjjT
	KGMe4NqIKECnrnlfQgOJBtR8A9WMqEuWG7YKwNuYL2ZDXwU8a7qxf4PN3LLCBlc0unU37NeBfqFaI
	cTn72JcbVGLu8pFC4znr1kpGqQFMO3kG7IJDGWn8J/a72iANImGtTud4uUPDmNAt0zywrqZrPw0BA
	vsBiCzKvcz21Jt9rxCWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIWwg-005gEV-3W; Thu, 19 Jan 2023 15:35:18 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIWwc-005gBY-Ia
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 15:35:16 +0000
Received: by mail-wm1-x32d.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso1541917wms.3
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 07:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nZL+EvzEvrAfF5w1mqqATHNa4cpLOo+MW+TpXyhWCHM=;
        b=fHNkuVltpvcapP0msNuKmLRanamZBxuyYOCRyGewd+VVXRtvCT05Y0ai/WF9vSz6tY
         TRuA/6COyvo+EKDIiGLuUJgzKH9Da54RNY2XhWFp2zzifPR5lPQY60bXYGtOAlaYj2v1
         1veATYgBXA+Ef+YmS6+HrYl8Z4VpAvFwaCMx8llsjf+ONQDIaYANiA1G29ghHxM7Xqjw
         ZqEuz5FLtSNtH+N8mPcMaIp+Ovqni62lJnuOjkOkD+ymGZg6lYlKYSOpcNhbeoQIqcCO
         b/qClz1B42F/M7/TS0B1R9NTOWpPwFLD+aLhuvRR8X9LdAtufdcLvTv5mzrjeYYpaBH8
         91Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nZL+EvzEvrAfF5w1mqqATHNa4cpLOo+MW+TpXyhWCHM=;
        b=FyxsTGeQNMjSYhM6FtZIXnESvHWi0k9GcMvBBIiQGBiIiMukeSlA8oX1YtFp+tfZ0e
         X3HnPE0/0TlEDKeiOoTUXNrQxo1yiJmFcM2fO6/wpoaiHGz6EMpPxhX71snaxr+lgtQb
         48+DqBBOfYpTBfM1yUhcsF8Od+ZTo2dbYg/XXEsZ5S+LXXYzZWSTSu9D3pYSk5ko8+JQ
         y8+T1pAfgMxXauaV78rGUdaiY7FNSNwFTyzmJIEDx7iX5l2vxMgnGsKW1HApA62/KWqL
         +sKSJHhre9GXukCm+Aid+Sq/VzfNepgr6vVLfApX1I0N0saCyi2Ao228hN67GijYK35F
         hPuw==
X-Gm-Message-State: AFqh2krH9OwcCMT1QPYeOTj3xaoSAlrCYAOoqzmmfjt4YlBQtl0R0czc
	S5e1WyBI1TifwGWiBMXdCCIlPA==
X-Google-Smtp-Source: AMrXdXsQgjNOKgyBhRiFhNp7IpHqVoVUV1i9ePpAWGBcvM/SHjIii/CsB63IjRkyDA7IeZ0KuvPI0w==
X-Received: by 2002:a1c:7414:0:b0:3d9:779e:9788 with SMTP id p20-20020a1c7414000000b003d9779e9788mr6884710wmc.37.1674142510780;
        Thu, 19 Jan 2023 07:35:10 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j15-20020a05600c190f00b003d9aa76dc6asm7608427wmq.0.2023.01.19.07.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 07:35:09 -0800 (PST)
Date: Thu, 19 Jan 2023 17:35:08 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 10/12] PCI: qcom: Add SM8550 PCIe support
Message-ID: <Y8ljLJ8vsqxdQtW8@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
 <20230119140453.3942340-11-abel.vesa@linaro.org>
 <20230119142155.GA101896@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230119142155.GA101896@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_073514_669744_650D4D9E 
X-CRM114-Status: GOOD (  23.57  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjMtMDEtMTkgMTk6NTE6NTUsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiBPbiBU
aHUsIEphbiAxOSwgMjAyMyBhdCAwNDowNDo1MVBNICswMjAwLCBBYmVsIFZlc2Egd3JvdGU6Cj4g
PiBBZGQgY29tcGF0aWJsZSBmb3IgYm90aCBQQ0llIGZvdW5kIG9uIFNNODU1MC4KPiA+IEFsc28g
YWRkIHRoZSBjbm9jX3BjaWVfc2ZfYXhpIGNsb2NrIG5lZWRlZCBieSB0aGUgU004NTUwLgo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBsaW5hcm8ub3JnPgo+IAo+
IFJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4KPiAK
PiA+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQGxpbmFyby5vcmc+
Cj4gPiAtLS0KPiA+IAo+ID4gVGhlIHYzIG9mIHRoaXMgcGF0Y2hzZXQgaXM6Cj4gPiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzAxMTkxMTI0NTMuMzM5MzkxMS0xLWFiZWwudmVzYUBs
aW5hcm8ub3JnLwo+ID4gCj4gPiBDaGFuZ2VzIHNpbmNlIHYzOgo+ID4gICogcmVuYW1lZCBjbm9j
X3BjaWVfc2ZfYXhpIHRvIGNub2Nfc2ZfYXhpCj4gPiAKPiA+IENoYW5nZXMgc2luY2UgdjI6Cj4g
PiAgKiBub25lCj4gPiAgCj4gPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ID4gICogY2hhbmdlZCB0aGUg
c3ViamVjdCBsaW5lIHByZWZpeCBmb3IgdGhlIHBhdGNoIHRvIG1hdGNoIHRoZSBoaXN0b3J5LAo+
ID4gICAgbGlrZSBCam9ybiBIZWxnYWFzIHN1Z2dlc3RlZC4KPiA+ICAqIGFkZGVkIEtvbnJhZCdz
IFItYiB0YWcKPiA+IAo+ID4gCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLmMgfCA0ICsrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4g
PiBpbmRleCA3N2U1ZGM3Yjg4YWQuLjMwZjc0YmM1MWRiZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gPiArKysgYi9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ID4gQEAgLTE4Miw3ICsxODIsNyBAQCBzdHJ1Y3Qg
cWNvbV9wY2llX3Jlc291cmNlc18yXzNfMyB7Cj4gPiAgCj4gPiAgLyogNiBjbG9ja3MgdHlwaWNh
bGx5LCA3IGZvciBzbTgyNTAgKi8KPiAKPiBOb3cgdGhpcyBjb21tZW50IGlzIG91dGRhdGVkIDsp
Cj4gCgpGYWlyIHBvaW50LiBJJ2xsIHdhaXQgZm9yIHNvbWUgbW9yZSBjb21tZW50cyBiZWZvcmUK
SSdsbCBzZW5kIGEgbmV3IHZlcnNpb24uCgo+IFRoYW5rcywKPiBNYW5pCj4gCj4gPiAgc3RydWN0
IHFjb21fcGNpZV9yZXNvdXJjZXNfMl83XzAgewo+ID4gLQlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSBj
bGtzWzEyXTsKPiA+ICsJc3RydWN0IGNsa19idWxrX2RhdGEgY2xrc1sxM107Cj4gPiAgCWludCBu
dW1fY2xrczsKPiA+ICAJc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgc3VwcGxpZXNbMl07Cj4g
PiAgCXN0cnVjdCByZXNldF9jb250cm9sICpwY2lfcmVzZXQ7Cj4gPiBAQCAtMTIwOCw2ICsxMjA4
LDcgQEAgc3RhdGljIGludCBxY29tX3BjaWVfZ2V0X3Jlc291cmNlc18yXzdfMChzdHJ1Y3QgcWNv
bV9wY2llICpwY2llKQo+ID4gIAlyZXMtPmNsa3NbaWR4KytdLmlkID0gIm5vY19hZ2dyXzQiOwo+
ID4gIAlyZXMtPmNsa3NbaWR4KytdLmlkID0gIm5vY19hZ2dyX3NvdXRoX3NmIjsKPiA+ICAJcmVz
LT5jbGtzW2lkeCsrXS5pZCA9ICJjbm9jX3F4IjsKPiA+ICsJcmVzLT5jbGtzW2lkeCsrXS5pZCA9
ICJjbm9jX3NmX2F4aSI7Cj4gPiAgCj4gPiAgCW51bV9vcHRfY2xrcyA9IGlkeCAtIG51bV9jbGtz
Owo+ID4gIAlyZXMtPm51bV9jbGtzID0gaWR4Owo+ID4gQEAgLTE4MjgsNiArMTgyOSw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHFjb21fcGNpZV9tYXRjaFtdID0gewo+ID4g
IAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1zbTgyNTAiLCAuZGF0YSA9ICZjZmdfMV85XzAg
fSwKPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtc204NDUwLXBjaWUwIiwgLmRhdGEg
PSAmY2ZnXzFfOV8wIH0sCj4gPiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXNtODQ1MC1w
Y2llMSIsIC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+ID4gKwl7IC5jb21wYXRpYmxlID0gInFjb20s
cGNpZS1zbTg1NTAiLCAuZGF0YSA9ICZjZmdfMV85XzAgfSwKPiA+ICAJeyB9Cj4gPiAgfTsKPiA+
ICAKPiA+IC0tIAo+ID4gMi4zNC4xCj4gPiAKPiAKPiAtLSAKPiDgrq7grqPgrr/grrXgrqPgr43g
rqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
