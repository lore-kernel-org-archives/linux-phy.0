Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D1AC352A1
	for <linux-phy@archiver.kernel.org>; Tue,  6 Dec 2022 07:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HE4dOPtr0D8XGKszRU67C4+wynybycddhqlVNX5AW+c=; b=gC0DbDnNQJhYxQ
	BurbStltNLOP9VDj55ptUS4Iz554o+yditkqly66/ApIBy8C3B7OmQfnsURLDwVRKLZKrHvimyP3T
	jayCDPUEwk996PVCQZnyPFu+xYK7PZVPjnLEUJ7hlWa27yehkr7QYNrdPxy+6eYZP5WLlXLi37l1a
	mn0DGNLMgthLgVcjHG16v01UsfqTtmntpsF1pMEoKcFkhUmwhTG/LGCgrPawt465OaL+8Tjat/2Kw
	CIYaHS0SD2IZSo0E8o37rjhOte1Sg6Zjy4iXRw+WVUPH2NhlsdlGkWJZfEVmxEe/MBhM1D2iq+RcS
	W13MD+sMalj/6vV4zU4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2S82-003MRI-1C; Tue, 06 Dec 2022 07:12:34 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2S7y-003MAi-4b
	for linux-phy@lists.infradead.org; Tue, 06 Dec 2022 07:12:31 +0000
Received: by mail-pg1-x530.google.com with SMTP id h193so12592103pgc.10
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 23:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B1ANPs4DOsm+UmHpJKXF/8eOmbfQxRkzXdEOzvRDR0M=;
        b=h6iWhky3HNQ9/UAroFVu1c+YaOp5hTc8qWEg+liylRRbSddMndy3T8bGavUnnPHPoc
         BJHn0yVyaQCk/TP0+iqLwCBnOUS/CFyGhpP3v1X0RRSy19tKVJkFAMz8TGNKNgikv5Co
         evQOdPQ6v2JLkS2TbWCMZsZNLvooyzVGnOmnKEUclleIOBpfpuxB0ZVhr9mCRPdl35cm
         /T+HSA3Nn7xCMpoftJcstFZ83FTeaqGlofBVFZBttSR/6jCwxyOIahWOfXOfiALLJfAY
         /aGzowNZASXJYkbLpil8GHBc7leT9ovBsrfx0VukswY/lbzcQOK6vZqbEOpMUHwSL8kM
         1/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B1ANPs4DOsm+UmHpJKXF/8eOmbfQxRkzXdEOzvRDR0M=;
        b=BG++iaA1LJzAVeUUJ31kMRCATX3T9oNZkbMmPYwoiMT+G9QBEr8K9G3X7bok4VUBlQ
         2pxKqPCM/VoqfsQLCaQDqoU5s/Z6MF+WRQba86gjxgG8Lquj/NKyNsLB2kXxqpiey9mP
         IdYBj+G/YQw0FfcXm3NUq5OUZI+tk8fmGn7CRy5jIkfxOO6uuXlJZZMBOobuAYib4tf0
         xzFNIBlnqhjjjcQwAN+X4Gds/64JRMZuIckpn2Rw7fBo9zIVxWmTuSgmaNuCxm7SSOBO
         uhUZA39run91Wciw0t+5tlYQCUczjZpYRA0mLgfH9f/vb9h3CLNryhVYfNNkajakvcyT
         bpPQ==
X-Gm-Message-State: ANoB5pk9JVAs+6b36dpPOgEqEA8SlCXZ12YW4sCYPElHv9uxKfD31+vL
	DGyVhKF/tPBRPJFjlvc7w1np
X-Google-Smtp-Source: AA0mqf54IKnAGppRNz0mXYBvpJUyY3qJ/ynQHuD0Eq4Kx1RmzbUPe15c2LK96rk2XExXRZe1KksIPA==
X-Received: by 2002:a05:6a00:1d22:b0:577:e7d:5490 with SMTP id a34-20020a056a001d2200b005770e7d5490mr6282671pfx.71.1670310742370;
        Mon, 05 Dec 2022 23:12:22 -0800 (PST)
Received: from thinkpad ([117.207.29.147])
        by smtp.gmail.com with ESMTPSA id i28-20020a056a00005c00b005771f5ea2ebsm2058560pfk.135.2022.12.05.23.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 23:12:21 -0800 (PST)
Date: Tue, 6 Dec 2022 12:42:13 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
	avri.altman@wdc.com, bvanassche@acm.org
Subject: Re: [PATCH v4 04/23] phy: qcom-qmp-ufs: Add support for configuring
 PHY in HS Series B mode
Message-ID: <20221206071213.GA15486@thinkpad>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
 <20221201174328.870152-5-manivannan.sadhasivam@linaro.org>
 <32201EF1-8169-4940-99E1-31CC0C37C522@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32201EF1-8169-4940-99E1-31CC0C37C522@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_231230_214875_212D10DD 
X-CRM114-Status: GOOD (  19.46  )
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

T24gVHVlLCBEZWMgMDYsIDIwMjIgYXQgMTI6NTE6NDJBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiAKPiAKPiBPbiAxIERlY2VtYmVyIDIwMjIgMjA6NDM6MDkgR01UKzAzOjAwLCBN
YW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3
cm90ZToKPiA+QWRkIHNlcGFyYXRlIHRhYmxlc19oc19iIGluc3RhbmNlIHRvIGFsbG93IHRoZSBQ
SFkgZHJpdmVyIHRvIGNvbmZpZ3VyZSB0aGUKPiA+UEhZIGluIEhTIFNlcmllcyBCIG1vZGUuIFRo
ZSBpbmRpdmlkdWFsIFNvQyBjb25maWdzIG5lZWQgdG8gc3VwcGx5IHRoZQo+ID5zZXJkZXMgcmVn
aXN0ZXIgc2V0dGluZyBpbiB0YWJsZXNfaHNfYiBhbmQgdGhlIFVGUyBkcml2ZXIgY2FuIHJlcXVl
c3QgdGhlCj4gPlNlcmllcyBCIG1vZGUgYnkgY2FsbGluZyBwaHlfc2V0X21vZGUoKSB3aXRoIG1v
ZGUgc2V0IHRvIFBIWV9NT0RFX1VGU19IU19CLgo+ID4KPiA+UmV2aWV3ZWQtYnk6IERtaXRyeSBC
YXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiA+U2lnbmVkLW9mZi1ieTog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4K
PiA+LS0tCj4gPiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgfCAxNSAr
KysrKysrKysrKysrKysKPiA+IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4gPgo+
ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gPmluZGV4IDUxNjAyN2Uz
NTZmMC4uMmQ1ZGQzMzZhZWIyIDEwMDY0NAo+ID4tLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtdWZzLmMKPiA+KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXVmcy5jCj4gPkBAIC01NDcsNiArNTQ3LDggQEAgc3RydWN0IHFtcF9waHlfY2ZnIHsKPiA+
IAo+ID4gCS8qIE1haW4gaW5pdCBzZXF1ZW5jZSBmb3IgUEhZIGJsb2NrcyAtIHNlcmRlcywgdHgs
IHJ4LCBwY3MgKi8KPiA+IAljb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmdfdGJscyB0YmxzOwo+ID4r
CS8qIEFkZGl0aW9uYWwgc2VxdWVuY2UgZm9yIEhTIFNlcmllcyBCICovCj4gPisJY29uc3Qgc3Ry
dWN0IHFtcF9waHlfY2ZnX3RibHMgdGJsc19oc19iOwo+ID4gCj4gPiAJLyogY2xvY2sgaWRzIHRv
IGJlIHJlcXVlc3RlZCAqLwo+ID4gCWNvbnN0IGNoYXIgKiBjb25zdCAqY2xrX2xpc3Q7Cj4gPkBA
IC01ODAsNiArNTgyLDcgQEAgc3RydWN0IHFtcF91ZnMgewo+ID4gCXN0cnVjdCByZXNldF9jb250
cm9sICp1ZnNfcmVzZXQ7Cj4gPiAKPiA+IAlzdHJ1Y3QgcGh5ICpwaHk7Cj4gPisJdTMyIG1vZGU7
Cj4gPiB9Owo+ID4gCj4gPiBzdGF0aWMgaW5saW5lIHZvaWQgcXBoeV9zZXRiaXRzKHZvaWQgX19p
b21lbSAqYmFzZSwgdTMyIG9mZnNldCwgdTMyIHZhbCkKPiA+QEAgLTg0MSw2ICs4NDQsOCBAQCBz
dGF0aWMgdm9pZCBxbXBfdWZzX3Bjc19pbml0KHN0cnVjdCBxbXBfdWZzICpxbXAsIGNvbnN0IHN0
cnVjdCBxbXBfcGh5X2NmZ190YmxzCj4gPiBzdGF0aWMgdm9pZCBxbXBfdWZzX2luaXRfcmVnaXN0
ZXJzKHN0cnVjdCBxbXBfdWZzICpxbXAsIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnKQo+
ID4gewo+ID4gCXFtcF91ZnNfc2VyZGVzX2luaXQocW1wLCAmY2ZnLT50YmxzKTsKPiA+KwlpZiAo
cW1wLT5tb2RlID09IFBIWV9NT0RFX1VGU19IU19CKQo+ID4rCQlxbXBfdWZzX3NlcmRlc19pbml0
KHFtcCwgJmNmZy0+dGJsc19oc19iKTsKPiAKPiBJIHN0aWxsIHRoaW5rIHRoYXQgcW1wX3Vmc19p
bml0X3JlZ2lzdGVycygpIGlzIGEgd2F5IHRvIGdvIGhlcmUgLCBzZWUgdGhlIHBjaWUgZHJpdmVy
Lgo+IAoKSSBkaWQgdXNlIHFtcF91ZnNfaW5pdF9yZWdpc3RlcnMoKSBhcyBhIHdyYXBwZXIuIE9u
bHkgZGlmZmVyZW5jZSBoZXJlIGlzIHRoYXQKdGhlcmUgaXMgb25lIG1vcmUgbGV2ZWwgb2YgYWJz
dHJhY3Rpb24gd2hpY2ggbG9va3MgY2xlYW5lciB0byBtZS4KClRoYW5rcywKTWFuaQoKPiA+IAlx
bXBfdWZzX2xhbmVzX2luaXQocW1wLCAmY2ZnLT50YmxzKTsKPiA+IAlxbXBfdWZzX3Bjc19pbml0
KHFtcCwgJmNmZy0+dGJscyk7Cj4gPiB9Cj4gPkBAIC0xMDExLDkgKzEwMTYsMTkgQEAgc3RhdGlj
IGludCBxbXBfdWZzX2Rpc2FibGUoc3RydWN0IHBoeSAqcGh5KQo+ID4gCXJldHVybiBxbXBfdWZz
X2V4aXQocGh5KTsKPiA+IH0KPiA+IAo+ID4rc3RhdGljIGludCBxbXBfdWZzX3NldF9tb2RlKHN0
cnVjdCBwaHkgKnBoeSwgZW51bSBwaHlfbW9kZSBtb2RlLCBpbnQgc3VibW9kZSkKPiA+K3sKPiA+
KwlzdHJ1Y3QgcW1wX3VmcyAqcW1wID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gPisKPiA+Kwlx
bXAtPm1vZGUgPSBtb2RlOwo+ID4rCj4gPisJcmV0dXJuIDA7Cj4gPit9Cj4gPisKPiA+IHN0YXRp
YyBjb25zdCBzdHJ1Y3QgcGh5X29wcyBxY29tX3FtcF91ZnNfcGh5X29wcyA9IHsKPiA+IAkucG93
ZXJfb24JPSBxbXBfdWZzX2VuYWJsZSwKPiA+IAkucG93ZXJfb2ZmCT0gcW1wX3Vmc19kaXNhYmxl
LAo+ID4rCS5zZXRfbW9kZQk9IHFtcF91ZnNfc2V0X21vZGUsCj4gPiAJLm93bmVyCQk9IFRISVNf
TU9EVUxFLAo+ID4gfTsKPiA+IAo+IAo+IC0tIAo+IFdpdGggYmVzdCB3aXNoZXMKPiBEbWl0cnkK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
