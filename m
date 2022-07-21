Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA4CCC43334
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 10:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fAu3qDiBCBfaLbbg1hKjOjK6sk/wJUQSjzb2GULUzc=; b=kZ0Q3lPRFFEY59
	Q7UliyKMGFvp7Gdpc3rtZ6JgpET4e7YFkLwCSztm8YWCDiCrHam6Ar3ffpXTCioVEt8/8Zp75SelL
	8QxSh2UKMisTPhy8QCB1s0xwwVZ0cL04hrs80aLyZXc3KHa5tRCbdzB0Kl09N6yU9V9A2eAsKUwR1
	D5q4+DHbS2W/c7SUKLf5RUJfugU0DweNXaAg7KwLWgyVRKAt1EtOGfUrzQagn+tiAo7ITkm9abpNb
	hKipoYsFhqCLf53dXT/io2bMFJgP/6woTUoOxseLZ+yD4XKgzzqQg2gMIi2Gx1PnyfqF1FV2T13Ri
	hZQjdoFA0AbY4ARibalA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oET7E-003hN7-3z; Thu, 21 Jul 2022 10:09:08 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oET4z-003ffI-2w
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 10:06:50 +0000
Received: by mail-pj1-x102e.google.com with SMTP id ku18so1149854pjb.2
        for <linux-phy@lists.infradead.org>; Thu, 21 Jul 2022 03:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=AVi71jTg2zZgRyksu4oDVpC11c/ibz9Ad2vYrARJAuk=;
        b=lQKSIpdxBQBj3NDqMVti15bQQcyYgi67J2ZbvxOu7JNF+q+9bQAhQT+n9g1YoKpGib
         S17SYds6jd5cUMwpU/CCqWpVuW5d2sEIJ7XB/8q3jFFaYdgZq092jL4tpU2p1FPsX06e
         y8hhaIiw69hak/ANQIC2WgSk3ieHk4HeznjI+2y8fupLspLVg4Q6s8KktxbaUK0KGNm6
         CtwseyraVhrzYqdjHdy5NjvseggKXiufAOFrbVNGp5rBex3y7I5FueymzMIdMN+JGXT1
         KtvgBdE7V6XCzEu1NgZev2GOfBo60m8mB9dhauG1QT6LCBtfmqPbVBDGQKwFVeaSCeMK
         oH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=AVi71jTg2zZgRyksu4oDVpC11c/ibz9Ad2vYrARJAuk=;
        b=QWYW/mCmZ3b8Z0HjxD8Gzx1PFI/NcLEA2b+96XwhJvB70vpoeP0SnLH74YWPTHqw0n
         7xbwGEEwezXOPwBAW6HP0JhforI7vuhZ4MjIWvL+Wfs6piDpl8QZxA/zgU4asjHCzvuF
         8XxElTX9W7JECzIdc/nlG/TppAoPqHUs2xrN2pfToPBdqf5yEvX3Dxu6ItefceDjfHxe
         W/B0XpHvbYYHqOmgUMOfL1SoQ/+VY9/Pak8hYUHiH+juYF3lzujyhRSqH9LDB0uTfh5b
         c8eIyctXyZkfV2ClH2yc1m04r/wvnW1HxhQGOGuHrYTCgKkt1OEsZn9yR/ivY3YmClOb
         HSyw==
X-Gm-Message-State: AJIora++bUelM6HMUyKhvesqJ4qhM2Q8xgPw+Aq3JU4KVLgZTtxiVR84
	d48eeTTzDkKwrpQ8AAjkuFDb
X-Google-Smtp-Source: AGRyM1t+5pkhTckRd47fBjJIXpNSlttS3jlHQMWA2BnyvciXg8rGjrhzqIi7eRvnwPNUzZan3B/yRg==
X-Received: by 2002:a17:902:d48a:b0:16b:f0be:4e15 with SMTP id c10-20020a170902d48a00b0016bf0be4e15mr43685877plg.155.1658398006077;
        Thu, 21 Jul 2022 03:06:46 -0700 (PDT)
Received: from thinkpad ([117.217.186.184])
        by smtp.gmail.com with ESMTPSA id 128-20020a621886000000b0052abc2438f1sm1316888pfy.55.2022.07.21.03.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 03:06:45 -0700 (PDT)
Date: Thu, 21 Jul 2022 15:36:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
Subject: Re: [RFC PATCH 3/4] PCI: qcom: call phy_set_mode_ext()
Message-ID: <20220721100638.GC39125@thinkpad>
References: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
 <20220719200626.976084-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220719200626.976084-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_030649_170755_3039BBFE 
X-CRM114-Status: GOOD (  15.04  )
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
ZSwgSnVsIDE5LCAyMDIyIGF0IDExOjA2OjI1UE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3Jv
dGU6Cj4gQ2FsbCBwaHlfc2V0X21vZGVfZXh0KCkgdG8gbm90aWZ5IHRoZSBQSFkgZHJpdmVyIHRo
YXQgdGhlIFBIWSBpcyBiZWluZwo+IHVzZWQgaW4gdGhlIFJDIG1vZGUuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPgo+IC0t
LQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyB8IDQgKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1xY29tLmMKPiBpbmRleCA1ZWQxNjRjMmFmYTMuLjUwYmYzZmVmZWY3YSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ICsrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gQEAgLTE0ODYsNiArMTQ4Niwx
MCBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9ob3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAgKnBw
KQo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+ICAKPiArCXJldCA9IHBoeV9zZXRfbW9k
ZV9leHQocGNpZS0+cGh5LCBQSFlfTU9ERV9QQ0lFLCAwKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0
dXJuIHJldDsKCmVycl9kZWluaXQ/CgpUaGFua3MsCk1hbmkKCj4gKwo+ICAJcmV0ID0gcGh5X3Bv
d2VyX29uKHBjaWUtPnBoeSk7Cj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZXJyX2RlaW5pdDsKPiAt
LSAKPiAyLjM1LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
