Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5518C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 10:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUfyobNwSUkzOQH+emRskfVWMmwj5imGoMbcWlfBaA0=; b=ptIR5CFiFGTDV0
	W86Qqn6kD1YdpRH6yjiymzkWRT2hUaycGiq5LrqpW6qh4w8Ibodyuv0Y/qrMFXRYuy0rgRdzQIsEC
	AhDpUuANg0E1tEEoOrdr/yU7pvJyn28IU0kaUmh9LvzmJo+oTsfdZt+lkCicGrfs0WYj3adw2A0s8
	JHUCJIgRJDvfND0nfQb/g6gYWNvH2R4Uk+Pa9LddZbUmaznBcN8xJeCzULVRWvu/pazqagRXdLKTu
	/RDIS3xEp1ZziNOcwEU6oG88Ec4udHsNiyeL3qJmbPAhYQUDZPl7jQ75w2arEi8Rh4IJhgLXikKnj
	C7oOHXqsTjvUWX34OUkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oET7M-003hUK-Of; Thu, 21 Jul 2022 10:09:16 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oET6F-003get-2a
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 10:08:08 +0000
Received: by mail-pg1-x530.google.com with SMTP id bf13so1203329pgb.11
        for <linux-phy@lists.infradead.org>; Thu, 21 Jul 2022 03:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=a9YjzXGdq5669WOd8WnAMplMXRiXL/2vmSMeSJuFMgI=;
        b=bghQzs4KeeC3qf2IwPpeOjfcv8rcRJmxobbTEu1b1LgfoUir1gN0ploWyqiZ/dgsb2
         LjQ5wAhxQocOojaMFuJEIvWhUQLwUTD05e1KfQb0bwQC+dNjhgEO0YmTNHcM3wpsT875
         YFwKCNI/iOvGie/4whVieQ7k2Czb7Gspx3QastMBjK+R6oOaGw1PbGPpwNxmK+nrAn71
         yUEFqXwdGQYxrE4n66E8fGNcd0qdnzYz8g04XTx61zKpEQRedqNajeYwAiEyuWXFaXnR
         nzFsOsg59s2s5mgufW2dwdmktIUBQOa1ngBaXh5fKi+hzzQ57DYS/gik7KPpgltoD+HR
         ItrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=a9YjzXGdq5669WOd8WnAMplMXRiXL/2vmSMeSJuFMgI=;
        b=MCdRGiIk97WkXSORlhip4cmjPRDDx/qBJYiY5V41P5vYYhMSqJppxfN69buJ30dwyk
         knneU0bn/cj1Hbn18XIIWXb5CcSxcDxH0zncGIbtNqHj02c9VjhTw88aqyO3p9AEEgOt
         WbVPQGzUWjIWxsU4c/AWmLxxD8WAJfBhaW7Z58C59FeNHzYmYE30Avb7ry7CV5Qiwhpz
         EDpnKwO4gCtbKhKIELrdP2s5G/Z1QS+48Pk99ZVkFdBx5PJ+jRCNV/1S7fFEcaAzLjOP
         xO6wpYKw6/+AvMOsXmCR35YqDPzvM+g3GPpQryRE9C/RDLGeGLrS5Dp7+tBpxHutE21h
         OQ3Q==
X-Gm-Message-State: AJIora+skC9mVwa/ueT03ymrbiN1Ee9wF3tU4X82OoNktJIjq5Uq8uB/
	6YBLLukHry68OeKlg4hMcz2q
X-Google-Smtp-Source: AGRyM1sEfVv500oMdF2vFfQRbAZm/PaTgquheMbdnclqX3E0EU7EPtOQjMjqRA0wgnuh4pIx0FcawQ==
X-Received: by 2002:a63:5b5e:0:b0:41a:5e8f:b127 with SMTP id l30-20020a635b5e000000b0041a5e8fb127mr7727534pgm.104.1658398083074;
        Thu, 21 Jul 2022 03:08:03 -0700 (PDT)
Received: from thinkpad ([117.217.186.184])
        by smtp.gmail.com with ESMTPSA id x1-20020aa79561000000b00528c26c84a3sm1293525pfq.64.2022.07.21.03.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 03:08:02 -0700 (PDT)
Date: Thu, 21 Jul 2022 15:37:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, y@thinkpad
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 4/4] PCI: qcom-ep: call phy_set_mode_ext()
Message-ID: <20220721100756.GD39125@thinkpad>
References: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
 <20220719200626.976084-5-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220719200626.976084-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_030807_161759_579E2B13 
X-CRM114-Status: GOOD (  14.64  )
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

U3ViamVjdCBjb3VsZCBiZSwKCiJQQ0k6IHFjb206IFNldCBQSFkgaW4gUkMgbW9kZSIKCk9uIFR1
ZSwgSnVsIDE5LCAyMDIyIGF0IDExOjA2OjI2UE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3Jv
dGU6Cj4gQ2FsbCBwaHlfc2V0X21vZGVfZXh0KCkgdG8gbm90aWZ5IHRoZSBQSFkgZHJpdmVyIHRo
YXQgdGhlIFBIWSBpcyBiZWluZwo+IHVzZWQgaW4gdGhlIEVQIG1vZGUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPgoKUmV2
aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxp
bmFyby5vcmc+CgpUaGFua3MsCk1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtcWNvbS1lcC5jIHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20tZXAuYwo+IGlu
ZGV4IGVjOTkxMTZhZDA1Yy4uMTFmODg3YTJmN2M0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1xY29tLWVwLmMKPiBAQCAtMjQwLDYgKzI0MCwxMCBAQCBzdGF0aWMgaW50
IHFjb21fcGNpZV9lbmFibGVfcmVzb3VyY2VzKHN0cnVjdCBxY29tX3BjaWVfZXAgKnBjaWVfZXAp
Cj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZXJyX2Rpc2FibGVfY2xrOwo+ICAKPiArCXJldCA9IHBo
eV9zZXRfbW9kZV9leHQocGNpZS0+cGh5LCBQSFlfTU9ERV9QQ0lFLCAxKTsKPiArCWlmIChyZXQp
Cj4gKwkJZ290byBlcnJfcGh5X2V4aXQ7Cj4gKwo+ICAJcmV0ID0gcGh5X3Bvd2VyX29uKHBjaWVf
ZXAtPnBoeSk7Cj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZXJyX3BoeV9leGl0Owo+IC0tIAo+IDIu
MzUuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/g
rrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
