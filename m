Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4E62C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 20:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJGuCe14htukT/HeI+I02Va+hOwgu3YmwBbwJQuAFBg=; b=XwhHbs3bue1ow2
	W1PWaKg+EH97n9LkPcS6jPcTyurGXUPDRNiVHrtGzm2brO1nLZBhf0Q/bNuyjEy0Lfz+R2nXG0itv
	ewHt1R0GAJJCgqj5wqIDFEXD+o/8pTfCfvGxtAMAJcPzdmNlOZVWi3zcjislvUokmsmE6CVLjfMtS
	JA3nzABiBRmpP7IjsAPbGPAVcFQXlev2pOJ+uloPZ5Nk5Pen+GhdPJ1Xra3VIvwGaoe8idaI3LTwE
	vErQUsJgEBgQoR4rZoWJMY44WrH6IXBdO3NvNfAOA92Q87guEXvRiAIKhvDxG5oj/nbr85tUarxOP
	sySi15OQh63PyHbnVLqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmh3u-004GIN-1V;
	Wed, 12 Apr 2023 20:27:26 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmh3s-004GGx-0d
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 20:27:25 +0000
Received: by mail-lf1-x12b.google.com with SMTP id o1so16318145lfc.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 13:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681331242; x=1683923242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qdD6X2tsWvNw/zRsltriRHxCTaK999MB9DdSQty7sIk=;
        b=m8RhPAagGIaAQM2rpwxDNqnkNsbDrLnvyXQuIL5Gb0pw04I6kEZMHvihT394Lk8U5E
         EsuPjFYRZBzfJu2GBHTaKq60kv9SGJX/48XubuFNGcklk8JMDxuU6L4CLbZ3Oa8Nv4sN
         pQ1Fa3s2dy3Le660qvhYqQ4W26Bk0Q3a0wkXYIgskj2PCtX5sYVPHzmrWfI/2ZsZmixc
         L8jHWFdJSnpDSYN19mKrGRf3uMsAskRXaufjgIB2i7lG/RduE0Pj9u6hX5Hz0MnJzNKa
         +BH6CxBBEl+dHGXQjF7nFIQ50DXq3Q2z8Xhz80neSLWgy4+TVnSak647ncaxX37B7CxV
         OQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681331242; x=1683923242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qdD6X2tsWvNw/zRsltriRHxCTaK999MB9DdSQty7sIk=;
        b=PX+ngylzuOW10bsDzbS7TGyIa0FzX3UOkEAq5KJLs6zEs//CMsIT8SxRUfruQPKUej
         cjTJsbjn1994pKzBf/cFNXFcjS7kDKWBAhBsbznSN4zdxu3TmxwwEPaku9oKtsZeVIFX
         PpwL09rtuEftGoKnelEeRDClAkjlqHcTcxJIuazi6Qntt7EvLV3zOLMZBDccpFx8DkwE
         p43AbyMoRE1k2De5nnihL4EET3n2rceXPAvkxlaxT84bIh9xr05ON/AHPQF82317mFd2
         UyuPKJpkvb2MhLDxW8YeFL6QnbO8kUCdDfBLOTmh079E7S51qMTuo+L3zCplGeq/Ir2/
         nXmw==
X-Gm-Message-State: AAQBX9fmhhtL0M/l4LFLoNBX/xQNCx7yFpRnIZK8+Y9FgRId6lkPW71Y
	2pMknY7GwaOe5iluYVETdJr32w==
X-Google-Smtp-Source: AKy350YVIRTv5R7AgdTvAxHjSp0NWPnZQJUJ/JGfN/ZvzkW+8RZBZ6F4DAfnpDpJ//H7u9TvnQiIpA==
X-Received: by 2002:ac2:55ae:0:b0:4dd:a445:e69d with SMTP id y14-20020ac255ae000000b004dda445e69dmr36307lfg.26.1681331242291;
        Wed, 12 Apr 2023 13:27:22 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id c25-20020a197619000000b004eacd90e0c7sm3165151lff.81.2023.04.12.13.27.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 13:27:21 -0700 (PDT)
Message-ID: <0d56d963-a9dc-f6c5-60c0-421da030e1b3@linaro.org>
Date: Wed, 12 Apr 2023 23:27:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop
 legacy bindings
Content-Language: en-GB
To: neil.armstrong@linaro.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-5-dmitry.baryshkov@linaro.org>
 <656c6ae6-41c5-9b7e-8602-02d8b3b4149e@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <656c6ae6-41c5-9b7e-8602-02d8b3b4149e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_132724_233883_CA4BA9F2 
X-CRM114-Status: GOOD (  11.11  )
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

T24gMjcvMDMvMjAyMyAxMTowMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMjQvMDMvMjAy
MyAyMjo1NSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gVGhlIHFjb20sbXNtODk5Ni1xbXAt
dXNiMy1waHkueWFtbCBkZWZpbmVzIGJpbmRpbmdzIGZvciBzZXZlcmFsIFBIWXMKPj4gd2hpY2gg
cHJlZGF0ZSBVU0IgLT4gVVNCK0RQIG1pZ3JhdGlvbi4gTm93IGFzIHNtODE1MCBoYXMgYmVlbiBt
aWdyYXRlZCwKPj4gZHJvcCB0aGUgbGVnYWN5IGJpbmRpbmdzIGNvbXBsZXRlbHkuIE5vIGRldmlj
ZSB0cmVlcyB1c2UgdGhlbSBhbnltb3JlLgo+PiBOZXdlciBVU0IrRFAgYmluZGluZ3Mgc2hvdWxk
IHVzZSBjb21ibyBiaW5kaW5ncyBmcm9tIHRoZSBiZWdpbm5pbmcuCj4gCj4gU2hvdWxkbid0IHdl
IG1hcmsgdGhlbiBhcyBkZXByZWNhdGVkIGZpcnN0ID8KCk5vdCBzdXJlLiBXaGF0IHdvdWxkIGJl
IHRoZSByZWFzb24gdG8gZG8gdGhhdD8gVGhlcmUgYXJlIG5vIHVzZXJzIGZvciAKdGhlbSBhbnlt
b3JlLiBUaGV5IGRvIG5vdCBkZXNjcmliZSBwcm9wZXJ0aWVzICh3aGljaCBjYW4gYmUgZGVwcmVj
YXRlZCksIAppbnN0ZWFkIHRoZXkgZGVzY3JpYmUgZGV2aWNlcyB3aGljaCBhcmUgbm8gbG9uZ2Vy
IHByZXNlbnQgaW4gRFQuCgo+IAo+IE5laWwKPiAKPj4KPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5
IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPgo+PiAtLS0KPj4gwqAgLi4u
L3BoeS9xY29tLG1zbTg5OTYtcW1wLXVzYjMtcGh5LnlhbWzCoMKgwqDCoMKgwqDCoCB8IDgwIC0t
LS0tLS0tLS0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDgwIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IAo+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxtc204OTk2LXFtcC11c2IzLXBoeS55YW1sIAo+PiBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxtc204OTk2LXFtcC11c2IzLXBoeS55YW1sCj4+IGlu
ZGV4IGU4MWEzODI4MWY4Yy4uNTY4NGVhZjE3MGU0IDEwMDY0NAo+PiAtLS0gCj4+IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLG1zbTg5OTYtcW1wLXVzYjMtcGh5
LnlhbWwKPj4gKysrIAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxtc204OTk2LXFtcC11c2IzLXBoeS55YW1sCj4+IEBAIC0yNCwyNiArMjQsMTcgQEAgcHJv
cGVydGllczoKPj4gwqDCoMKgwqDCoMKgwqAgLSBxY29tLG1zbTg5OTYtcW1wLXVzYjMtcGh5Cj4+
IMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxtc204OTk4LXFtcC11c2IzLXBoeQo+PiDCoMKgwqDCoMKg
wqDCoCAtIHFjb20scWNtMjI5MC1xbXAtdXNiMy1waHkKPj4gLcKgwqDCoMKgwqAgLSBxY29tLHNj
NzE4MC1xbXAtdXNiMy1waHkKPj4gLcKgwqDCoMKgwqAgLSBxY29tLHNjODE4MHgtcW1wLXVzYjMt
cGh5Cj4+IC3CoMKgwqDCoMKgIC0gcWNvbSxzZG04NDUtcW1wLXVzYjMtcGh5Cj4+IMKgwqDCoMKg
wqDCoMKgIC0gcWNvbSxzZG04NDUtcW1wLXVzYjMtdW5pLXBoeQo+PiDCoMKgwqDCoMKgwqDCoCAt
IHFjb20sc2R4NTUtcW1wLXVzYjMtdW5pLXBoeQo+PiDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc2R4
NjUtcW1wLXVzYjMtdW5pLXBoeQo+PiDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc202MTE1LXFtcC11
c2IzLXBoeQo+PiAtwqDCoMKgwqDCoCAtIHFjb20sc204MTUwLXFtcC11c2IzLXBoeQo+PiDCoMKg
wqDCoMKgwqDCoCAtIHFjb20sc204MTUwLXFtcC11c2IzLXVuaS1waHkKPj4gLcKgwqDCoMKgwqAg
LSBxY29tLHNtODI1MC1xbXAtdXNiMy1waHkKPj4gwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNtODI1
MC1xbXAtdXNiMy11bmktcGh5Cj4+IC3CoMKgwqDCoMKgIC0gcWNvbSxzbTgzNTAtcW1wLXVzYjMt
cGh5Cj4+IMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzbTgzNTAtcW1wLXVzYjMtdW5pLXBoeQo+PiAt
wqDCoMKgwqDCoCAtIHFjb20sc204NDUwLXFtcC11c2IzLXBoeQo+PiDCoMKgwqAgcmVnOgo+PiAt
wqDCoMKgIG1pbkl0ZW1zOiAxCj4+IMKgwqDCoMKgwqAgaXRlbXM6Cj4+IMKgwqDCoMKgwqDCoMKg
IC0gZGVzY3JpcHRpb246IHNlcmRlcwo+PiAtwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBEUF9D
T00KPj4gwqDCoMKgICIjYWRkcmVzcy1jZWxscyI6Cj4+IMKgwqDCoMKgwqAgZW51bTogWyAxLCAy
IF0KPj4gQEAgLTEyOCwyOCArMTE5LDYgQEAgcmVxdWlyZWQ6Cj4+IMKgIGFkZGl0aW9uYWxQcm9w
ZXJ0aWVzOiBmYWxzZQo+PiDCoCBhbGxPZjoKPj4gLcKgIC0gaWY6Cj4+IC3CoMKgwqDCoMKgIHBy
b3BlcnRpZXM6Cj4+IC3CoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgo+PiAtwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbnRhaW5zOgo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtOgo+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNjNzE4MC1xbXAtdXNiMy1waHkKPj4gLcKg
wqDCoCB0aGVuOgo+PiAtwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+PiAtwqDCoMKgwqDCoMKgwqAg
Y2xvY2tzOgo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgIG1heEl0ZW1zOiA0Cj4+IC3CoMKgwqDCoMKg
wqDCoCBjbG9jay1uYW1lczoKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoCBpdGVtczoKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogYXV4Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gY29uc3Q6IGNmZ19haGIKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcmVm
Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGNvbV9hdXgKPj4gLcKgwqDCoMKg
wqDCoMKgIHJlc2V0czoKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoCBtYXhJdGVtczogMQo+PiAtwqDC
oMKgwqDCoMKgwqAgcmVzZXQtbmFtZXM6Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHBoeQo+PiAtCj4+IMKgwqDCoCAtIGlm
Ogo+PiDCoMKgwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY29t
cGF0aWJsZToKPj4gQEAgLTIwNCw3ICsxNzMsNiBAQCBhbGxPZjoKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbXBhdGlibGU6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGFpbnM6Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW06Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAtIHFjb20sc204MTUwLXFtcC11c2IzLXBoeQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgLSBxY29tLHNtODE1MC1xbXAtdXNiMy11bmktcGh5Cj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sc204MjUwLXFtcC11c2IzLXVuaS1waHkKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzbTgzNTAtcW1wLXVzYjMtdW5pLXBoeQo+
PiBAQCAtMjI1LDI5ICsxOTMsNiBAQCBhbGxPZjoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSBjb25zdDogcGh5Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGNv
bW1vbgo+PiAtwqAgLSBpZjoKPj4gLcKgwqDCoMKgwqAgcHJvcGVydGllczoKPj4gLcKgwqDCoMKg
wqDCoMKgIGNvbXBhdGlibGU6Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgY29udGFpbnM6Cj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW06Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAtIHFjb20sc204MjUwLXFtcC11c2IzLXBoeQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSBxY29tLHNtODM1MC1xbXAtdXNiMy1waHkKPj4gLcKgwqDCoCB0aGVuOgo+PiAtwqDCoMKg
wqDCoCBwcm9wZXJ0aWVzOgo+PiAtwqDCoMKgwqDCoMKgwqAgY2xvY2tzOgo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgIG1heEl0ZW1zOiAzCj4+IC3CoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lczoKPj4g
LcKgwqDCoMKgwqDCoMKgwqDCoCBpdGVtczoKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBj
b25zdDogYXV4Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJlZl9jbGtfc3Jj
Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGNvbV9hdXgKPj4gLcKgwqDCoMKg
wqDCoMKgIHJlc2V0czoKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoCBtYXhJdGVtczogMgo+PiAtwqDC
oMKgwqDCoMKgwqAgcmVzZXQtbmFtZXM6Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHBoeQo+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtIGNvbnN0OiBjb21tb24KPj4gLQo+PiDCoMKgwqAgLSBpZjoKPj4gwqDCoMKgwqDC
oMKgwqAgcHJvcGVydGllczoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6Cj4+IEBA
IC0yNzEsMjggKzIxNiw2IEBAIGFsbE9mOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAt
IGNvbnN0OiBwaHlfcGh5Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHBo
eQo+PiAtwqAgLSBpZjoKPj4gLcKgwqDCoMKgwqAgcHJvcGVydGllczoKPj4gLcKgwqDCoMKgwqDC
oMKgIGNvbXBhdGlibGU6Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgY29udGFpbnM6Cj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGVudW06Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAt
IHFjb20sc2RtODQ1LXFtcC11c2IzLXBoeQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LSBxY29tLHNtODE1MC1xbXAtdXNiMy1waHkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gcWNvbSxzbTgzNTAtcW1wLXVzYjMtcGh5Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAtIHFjb20sc204NDUwLXFtcC11c2IzLXBoeQo+PiAtwqDCoMKgIHRoZW46Cj4+IC3CoMKgwqDC
oMKgIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+PiAtwqDCoMKgwqDCoMKgwqAgIl5waHlAWzAtOWEtZl0r
JCI6Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgcHJvcGVydGllczoKPj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmVnOgo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogVFggbGFuZSAxCj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUlggbGFuZSAx
Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUENTCj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogVFggbGFuZSAy
Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUlggbGFu
ZSAyCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUENT
X01JU0MKPj4gLQo+PiDCoMKgwqAgLSBpZjoKPj4gwqDCoMKgwqDCoMKgwqAgcHJvcGVydGllczoK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6Cj4+IEBAIC0zMTksMTMgKzI0MiwxMCBA
QCBhbGxPZjoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxpcHE2MDE4
LXFtcC11c2IzLXBoeQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLGlw
cTgwNzQtcW1wLXVzYjMtcGh5Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFj
b20scWNtMjI5MC1xbXAtdXNiMy1waHkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0g
cWNvbSxzYzcxODAtcW1wLXVzYjMtcGh5Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAt
IHFjb20sc2M4MTgweC1xbXAtdXNiMy1waHkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gcWNvbSxzZHg1NS1xbXAtdXNiMy11bmktcGh5Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIHFjb20sc2R4NjUtcW1wLXVzYjMtdW5pLXBoeQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNtNjExNS1xbXAtdXNiMy1waHkKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcWNvbSxzbTgxNTAtcW1wLXVzYjMtdW5pLXBoeQo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNtODI1MC1xbXAtdXNiMy1waHkKPj4g
wqDCoMKgwqDCoCB0aGVuOgo+PiDCoMKgwqDCoMKgwqDCoCBwYXR0ZXJuUHJvcGVydGllczoKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgICJecGh5QFswLTlhLWZdKyQiOgo+IAoKLS0gCldpdGggYmVzdCB3
aXNoZXMKRG1pdHJ5CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
