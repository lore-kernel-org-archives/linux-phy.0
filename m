Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD689C021B3
	for <linux-phy@archiver.kernel.org>; Mon, 24 Feb 2025 07:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUopV+9dT9csYiwDeuziSfdqpsFFHQLiA4VBFAUiUD4=; b=n3+jBhSU3A8BMy
	aWJ0RcyjYAKtmHKqEGjdWNOUf68Bc5dYq9QGRhuc8f1UnSh+4EGdO8snFWXpI34lgB44O4i2tPNJ/
	xAXV9Tt9ZKqq3yTgdMx2pzn4N72K5+eq832af8UYuzSlDuYKMtZc28VbAyKRbk3tVAMRq0EBjUIBO
	9SEhOfTpvUiLZ1Nz9s5fo/74SfUom62ijvVtLxw7C8LdP09ZxgCZXytLDlO+k+iLfH/QgRe4ut1IE
	Ds4ow/sQxWoMz/6yw+nIbI4ozwv5rne4bckP5oRcXRa6M2vkt4cFtBZt3hiUQICAGO0MLKYExtdEz
	1+gubaiwXka7FvpjjMPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmSxi-0000000CZoa-29k7;
	Mon, 24 Feb 2025 07:33:10 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmSxf-0000000CZo4-2kTR
	for linux-phy@lists.infradead.org;
	Mon, 24 Feb 2025 07:33:08 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-221206dbd7eso78887325ad.2
        for <linux-phy@lists.infradead.org>; Sun, 23 Feb 2025 23:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740382387; x=1740987187; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Qr+tjt+UIrk1yts5VK/tepdgWKh8IRps5QWJXwgEbZ0=;
        b=iMSfoB8q7T8fAnFG901rfgJwUceumyUPsOLUaUQHv/aYKIM3brv+33egEawluZVwIU
         EQLgQhA+Vz2Sd87oYctawpe1O7s4bptqyH4QVY3uJLCUWxX1yxUyIckXSxczWJzeZCHz
         rYUiww7/MI4eMeH6qSil/Yg1o/j4ompY/23YkbSIjBtHxS3bSfaFOW6kbzGeZcYJDmyA
         2vFmO4k55HpZGs6pxOB79MMmOF28DZGdFf8AnAS8KvbCMkn/6QYgFXRP+k7n4F3y53sR
         tFM0tQJfsCFKLrzym/zOoB1lgFhlHDmpjF9vW1GWMATHxqCiC3ZNoTv7QMLU2c/7PmhR
         /7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740382387; x=1740987187;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qr+tjt+UIrk1yts5VK/tepdgWKh8IRps5QWJXwgEbZ0=;
        b=xOLyLwF/iFECzes26RhQ3MXemRyo0/3MbYjejoIkjJ3b/GnGn3/af7upuUcurUlXJh
         sCRZIJuAc6H9V3V96CniEgPhGK+b3HsZT89Bdf2ARtxRyfzw12eHOe82a+o3w9nFtMtW
         MebAtexzocYQCQ0hP+V4DJwpx4KK7B2gX2SQsHknK+4IqUy8mn19SOe/Jyr3gfc/oUuP
         /JZIBFH3CCefyVCA5TyQcHQE2fv5Ci6ZRojdmoGJolaDrTCU+v1TQSlhiKSH/03Un0MI
         pdRj6M1hcMIb7UMjgAK/m1qpZxcHXk5u+z3QunYEBVMk1NvNxlHnR+cR5NOCey75Re20
         Wozw==
X-Forwarded-Encrypted: i=1; AJvYcCUXSATpEpEVC3t0wdqmnx6NY/keHo/yr5Vqktyzs98nEx0MaPQQbIxkm+wLaQJ0rpnQypWSvmeHtfA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzivLSp1pk/Lt3UoLAvUUVqBIQS9AIsQN/m1xdur7NYUUASbZNk
	Rd1EZ1b1fgw1gb0HtbtMSNT87rs/dsCZXAqjGgUD79qxTnbP0WDkn/A1a510JA==
X-Gm-Gg: ASbGncvLjiZiL4h4eKJgVjnjpEMmTMNNeRYlH36cFve9hNiFnQN199sNEiZayKYf71a
	6MdtZxr/9f21VC+wNavRxuWgdFuK6dyXzOMhJTNNcI0GHDZdqb8Znq4JiN0MOFMKI0CFUtZzL8N
	xhvWAHevHKcIM74sjvX76EoZFyONfCgcEq23SvfjnZidWUldeMF95gXzjhtzBlstjalvCB8dU94
	9Nvi2wQTPa8UKA19fmAAMoF1f/uy6pXyg6m5FeJ8dhE4Lx1NDma2/BLMax0hBzeNpgEOKJy2/gk
	Ndccu+zc8VgV7C2ItdYvL9XT/56Nat/xcsQj
X-Google-Smtp-Source: AGHT+IFbLd8cCuwa1xEr6it4PU+oeXmq35IvmwDlwqXzqneh56tsExMzzaPxVidrxDy/REEG2ZPIpw==
X-Received: by 2002:a17:902:da8c:b0:220:c813:dfda with SMTP id d9443c01a7336-2219ffa7636mr203604335ad.41.1740382386884;
        Sun, 23 Feb 2025 23:33:06 -0800 (PST)
Received: from thinkpad ([36.255.17.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73265f98e18sm17046763b3a.106.2025.02.23.23.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 23:33:06 -0800 (PST)
Date: Mon, 24 Feb 2025 13:03:01 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
	quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <20250224073301.aqbw3gxjnupbejfy@thinkpad>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
 <20250220102253.755116-3-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250220102253.755116-3-quic_wenbyao@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_233307_711595_136DBD4F 
X-CRM114-Status: GOOD (  28.05  )
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

T24gVGh1LCBGZWIgMjAsIDIwMjUgYXQgMDY6MjI6NTNQTSArMDgwMCwgV2VuYmluIFlhbyB3cm90
ZToKPiBGcm9tOiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+Cj4gCj4gU29tZSBR
Q09NIFBDSWUgUEhZcyBzdXBwb3J0IG5vX2NzciByZXNldC4gVW5saWtlIEJDUiByZXNldCB3aGlj
aCByZXNldHMgdGhlCj4gd2hvbGUgUEhZIChoYXJkd2FyZSBhbmQgcmVnaXN0ZXIpLCBub19jc3Ig
cmVzZXQgb25seSByZXNldHMgUEhZIGhhcmR3YXJlCj4gYnV0IHJldGFpbnMgcmVnaXN0ZXIgdmFs
dWVzLCB3aGljaCBtZWFucyBQSFkgc2V0dGluZyBjYW4gYmUgc2tpcHBlZCBkdXJpbmcKPiBQSFkg
aW5pdCBpZiBQQ0llIGxpbmsgaXMgZW5hYmxlZCBpbiBib29sdGxvYWRlciBhbmQgb25seSBub19j
c3IgaXMgdG9nZ2xlZAo+IGFmdGVyIHRoYXQuCj4gCj4gSGVuY2UsIGRldGVybWluZSB3aGV0aGVy
IHRoZSBQSFkgaGFzIGJlZW4gZW5hYmxlZCBpbiBib290bG9hZGVyIGJ5Cj4gdmVyaWZ5aW5nIFFQ
SFlfU1RBUlRfQ1RSTCByZWdpc3Rlci4gSWYgaXQncyBwcm9ncmFtbWVkIGFuZCBub19jc3IgcmVz
ZXQgaXMKPiBhdmFpbGFibGUsIHNraXAgQkNSIHJlc2V0IGFuZCBQSFkgcmVnaXN0ZXIgc2V0dGlu
ZyB0byBlc3RhYmxpc2ggdGhlIFBDSWUKPiBsaW5rIHdpdGggYm9vdGxvYWRlciAtIHByb2dyYW1t
ZWQgUEhZIHNldHRpbmdzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxdWljX3FpYW55
dUBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBXZW5iaW4gWWFvIDxxdWljX3dlbmJ5YW9A
cXVpY2luYy5jb20+CgpTb21lIG5pdHBpY2tzIGJlbG93LgoKPiAtLS0KPiAgZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyB8IDYwICsrKysrKysrKysrKysrKysrKystLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMg
Yi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gaW5kZXggMjE5MjY2
MTI1Y2YyLi42OTM4YjcyZGY3ZmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXBjaWUuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1wY2llLmMKPiBAQCAtMjgwNSw2ICsyODA1LDcgQEAgc3RydWN0IHFtcF9wY2llIHsKPiAg
Cj4gIAljb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZzsKPiAgCWJvb2wgdGNzcl80bG5fY29u
ZmlnOwo+ICsJYm9vbCBza2lwX2luaXQ7Cj4gIAo+ICAJdm9pZCBfX2lvbWVtICpzZXJkZXM7Cj4g
IAl2b2lkIF9faW9tZW0gKnBjczsKPiBAQCAtMzk3Niw3ICszOTc3LDkgQEAgc3RhdGljIGludCBx
bXBfcGNpZV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiAgewo+ICAJc3RydWN0IHFtcF9wY2llICpx
bXAgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiAgCWNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAq
Y2ZnID0gcW1wLT5jZmc7Cj4gKwl2b2lkIF9faW9tZW0gKnBjcyA9IHFtcC0+cGNzOwo+ICAJaW50
IHJldDsKPiArCWJvb2wgcGh5X2luaXRpYWxpemVkOwo+ICAKPiAgCXJldCA9IHJlZ3VsYXRvcl9i
dWxrX2VuYWJsZShjZmctPm51bV92cmVncywgcW1wLT52cmVncyk7Cj4gIAlpZiAocmV0KSB7Cj4g
QEAgLTM5ODQsMTAgKzM5ODcsMTggQEAgc3RhdGljIGludCBxbXBfcGNpZV9pbml0KHN0cnVjdCBw
aHkgKnBoeSkKPiAgCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiAtCXJldCA9IHJlc2V0X2NvbnRy
b2xfYnVsa19hc3NlcnQoY2ZnLT5udW1fcmVzZXRzLCBxbXAtPnJlc2V0cyk7Cj4gLQlpZiAocmV0
KSB7Cj4gLQkJZGV2X2VycihxbXAtPmRldiwgInJlc2V0IGFzc2VydCBmYWlsZWRcbiIpOwo+IC0J
CWdvdG8gZXJyX2Rpc2FibGVfcmVndWxhdG9yczsKPiArCXBoeV9pbml0aWFsaXplZCA9ICEhKHJl
YWRsKHBjcyArIGNmZy0+cmVnc1tRUEhZX1NUQVJUX0NUUkxdKSk7Cj4gKwlxbXAtPnNraXBfaW5p
dCA9IHFtcC0+bm9jc3JfcmVzZXQgJiYgcGh5X2luaXRpYWxpemVkOwo+ICsJLyoKPiArCSAqIFRv
Z2dsZSBCQ1IgcmVzZXQgZm9yIFBIWSB0aGF0IGRvZXNuJ3Qgc3VwcG9ydCBub19jc3IKPiArCSAq
IHJlc2V0IG9yIGhhcyBub3QgYmVlbiBpbml0aWFsaXplZAoKUGxlYXNlIG1ha2UgdXNlIG9mIDgw
IGNvbHVtbiB3aWR0aC4KCj4gKwkgKi8KPiArCWlmICghcW1wLT5za2lwX2luaXQpIHsKPiArCQly
ZXQgPSByZXNldF9jb250cm9sX2J1bGtfYXNzZXJ0KGNmZy0+bnVtX3Jlc2V0cywgcW1wLT5yZXNl
dHMpOwo+ICsJCWlmIChyZXQpIHsKPiArCQkJZGV2X2VycihxbXAtPmRldiwgInJlc2V0IGFzc2Vy
dCBmYWlsZWRcbiIpOwo+ICsJCQlnb3RvIGVycl9kaXNhYmxlX3JlZ3VsYXRvcnM7Cj4gKwkJfQo+
ICAJfQo+ICAKPiAgCXJldCA9IHJlc2V0X2NvbnRyb2xfYXNzZXJ0KHFtcC0+bm9jc3JfcmVzZXQp
Owo+IEBAIC0zOTk4LDEwICs0MDA5LDEyIEBAIHN0YXRpYyBpbnQgcW1wX3BjaWVfaW5pdChzdHJ1
Y3QgcGh5ICpwaHkpCj4gIAo+ICAJdXNsZWVwX3JhbmdlKDIwMCwgMzAwKTsKPiAgCj4gLQlyZXQg
PSByZXNldF9jb250cm9sX2J1bGtfZGVhc3NlcnQoY2ZnLT5udW1fcmVzZXRzLCBxbXAtPnJlc2V0
cyk7Cj4gLQlpZiAocmV0KSB7Cj4gLQkJZGV2X2VycihxbXAtPmRldiwgInJlc2V0IGRlYXNzZXJ0
IGZhaWxlZFxuIik7Cj4gLQkJZ290byBlcnJfYXNzZXJ0X3Jlc2V0Owo+ICsJaWYgKCFxbXAtPnNr
aXBfaW5pdCkgewo+ICsJCXJldCA9IHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2VydChjZmctPm51
bV9yZXNldHMsIHFtcC0+cmVzZXRzKTsKPiArCQlpZiAocmV0KSB7Cj4gKwkJCWRldl9lcnIocW1w
LT5kZXYsICJyZXNldCBkZWFzc2VydCBmYWlsZWRcbiIpOwo+ICsJCQlnb3RvIGVycl9hc3NlcnRf
cmVzZXQ7Cj4gKwkJfQo+ICAJfQo+ICAKPiAgCXJldCA9IGNsa19idWxrX3ByZXBhcmVfZW5hYmxl
KEFSUkFZX1NJWkUocW1wX3BjaWVwaHlfY2xrX2wpLCBxbXAtPmNsa3MpOwo+IEBAIC00MDExLDcg
KzQwMjQsOCBAQCBzdGF0aWMgaW50IHFtcF9wY2llX2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICAJ
cmV0dXJuIDA7Cj4gIAo+ICBlcnJfYXNzZXJ0X3Jlc2V0Ogo+IC0JcmVzZXRfY29udHJvbF9idWxr
X2Fzc2VydChjZmctPm51bV9yZXNldHMsIHFtcC0+cmVzZXRzKTsKPiArCWlmICghcW1wLT5za2lw
X2luaXQpCj4gKwkJcmVzZXRfY29udHJvbF9idWxrX2Fzc2VydChjZmctPm51bV9yZXNldHMsIHFt
cC0+cmVzZXRzKTsKPiAgZXJyX2Rpc2FibGVfcmVndWxhdG9yczoKPiAgCXJlZ3VsYXRvcl9idWxr
X2Rpc2FibGUoY2ZnLT5udW1fdnJlZ3MsIHFtcC0+dnJlZ3MpOwo+ICAKPiBAQCAtNDAyMyw3ICs0
MDM3LDEwIEBAIHN0YXRpYyBpbnQgcW1wX3BjaWVfZXhpdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIAlz
dHJ1Y3QgcW1wX3BjaWUgKnFtcCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICAJY29uc3Qgc3Ry
dWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPiAgCj4gLQlyZXNldF9jb250cm9sX2J1
bGtfYXNzZXJ0KGNmZy0+bnVtX3Jlc2V0cywgcW1wLT5yZXNldHMpOwo+ICsJaWYgKHFtcC0+bm9j
c3JfcmVzZXQpCj4gKwkJcmVzZXRfY29udHJvbF9hc3NlcnQocW1wLT5ub2Nzcl9yZXNldCk7Cj4g
KwllbHNlCj4gKwkJcmVzZXRfY29udHJvbF9idWxrX2Fzc2VydChjZmctPm51bV9yZXNldHMsIHFt
cC0+cmVzZXRzKTsKPiAgCj4gIAljbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShBUlJBWV9TSVpF
KHFtcF9wY2llcGh5X2Nsa19sKSwgcW1wLT5jbGtzKTsKPiAgCj4gQEAgLTQwNDIsNiArNDA1OSwx
MyBAQCBzdGF0aWMgaW50IHFtcF9wY2llX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiAgCXVu
c2lnbmVkIGludCBtYXNrLCB2YWw7Cj4gIAlpbnQgcmV0Owo+ICAKPiArCS8qCj4gKwkgKiBXcml0
ZSBDU1IgcmVnaXN0ZXIgZm9yIFBIWSB0aGF0IGRvZXNuJ3Qgc3VwcG9ydCBub19jc3IKPiArCSAq
IHJlc2V0IG9yIGhhcyBub3QgYmVlbiBpbml0aWFsaXplZAoKU2FtZSBoZXJlLgoKPiArCSAqLwo+
ICsJaWYgKHFtcC0+c2tpcF9pbml0KQo+ICsJCWdvdG8gc2tpcF90YmxzX2luaXQ7Cj4gKwo+ICAJ
cXBoeV9zZXRiaXRzKHBjcywgY2ZnLT5yZWdzW1FQSFlfUENTX1BPV0VSX0RPV05fQ09OVFJPTF0s
Cj4gIAkJCWNmZy0+cHdyZG5fY3RybCk7Cj4gIAo+IEBAIC00MDUzLDYgKzQwNzcsNyBAQCBzdGF0
aWMgaW50IHFtcF9wY2llX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiAgCXFtcF9wY2llX2lu
aXRfcmVnaXN0ZXJzKHFtcCwgJmNmZy0+dGJscyk7Cj4gIAlxbXBfcGNpZV9pbml0X3JlZ2lzdGVy
cyhxbXAsIG1vZGVfdGJscyk7Cj4gIAo+ICtza2lwX3RibHNfaW5pdDoKPiAgCXJldCA9IGNsa19i
dWxrX3ByZXBhcmVfZW5hYmxlKHFtcC0+bnVtX3BpcGVfY2xrcywgcW1wLT5waXBlX2Nsa3MpOwo+
ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+IEBAIC00MDYzLDYgKzQwODgsOSBAQCBzdGF0
aWMgaW50IHFtcF9wY2llX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiAgCQlnb3RvIGVycl9k
aXNhYmxlX3BpcGVfY2xrOwo+ICAJfQo+ICAKPiArCWlmIChxbXAtPnNraXBfaW5pdCkKPiArCQln
b3RvIHNraXBfc2VyZGVzX3N0YXJ0Owo+ICsKPiAgCS8qIFB1bGwgUEhZIG91dCBvZiByZXNldCBz
dGF0ZSAqLwo+ICAJcXBoeV9jbHJiaXRzKHBjcywgY2ZnLT5yZWdzW1FQSFlfU1dfUkVTRVRdLCBT
V19SRVNFVCk7Cj4gIAo+IEBAIC00MDcyLDYgKzQxMDAsNyBAQCBzdGF0aWMgaW50IHFtcF9wY2ll
X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiAgCWlmICghY2ZnLT5za2lwX3N0YXJ0X2RlbGF5
KQo+ICAJCXVzbGVlcF9yYW5nZSgxMDAwLCAxMjAwKTsKPiAgCj4gK3NraXBfc2VyZGVzX3N0YXJ0
Ogo+ICAJc3RhdHVzID0gcGNzICsgY2ZnLT5yZWdzW1FQSFlfUENTX1NUQVRVU107Cj4gIAltYXNr
ID0gY2ZnLT5waHlfc3RhdHVzOwo+ICAJcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHN0YXR1cywg
dmFsLCAhKHZhbCAmIG1hc2spLCAyMDAsCj4gQEAgLTQwOTYsNyArNDEyNSwxNSBAQCBzdGF0aWMg
aW50IHFtcF9wY2llX3Bvd2VyX29mZihzdHJ1Y3QgcGh5ICpwaHkpCj4gIAo+ICAJY2xrX2J1bGtf
ZGlzYWJsZV91bnByZXBhcmUocW1wLT5udW1fcGlwZV9jbGtzLCBxbXAtPnBpcGVfY2xrcyk7Cj4g
IAo+IC0JLyogUEhZIHJlc2V0ICovCj4gKwkvKiBXaGVuIFBIWSBpcyBwb3dlcmVkIG9mZiwgb25s
eSBxbXAtPm5vY3NyX3Jlc2V0IG5lZWRzIHRvIGJlIGNoZWNrZWQuCgpzLydXaGVuIFBIWSBpcyBw
b3dlcmVkIG9mZiwnLydXaGlsZSBwb3dlcmluZyBvZmYgdGhlIFBIWSwnCgo+ICsJICogSW4gdGhp
cyB3YXksIG5vIG1hdHRlciB3aGV0aGVyIHRoZSBQSFkgc2V0dGluZ3Mgd2VyZSBpbml0aWFsbHkK
PiArCSAqIHByb2dyYW1tZWQgYnkgYm9vdGxvYWRlciBvciBQSFkgZHJpdmVyIGl0c2VsZiwgd2Ug
Y2FuIHJldXNlIHRoZW0KCkl0IGlzIHJlYWxseSBwb3NzaWJsZSB0byBoYXZlIGJvb3Rsb2FkZXIg
bm90IHByb2dyYW1taW5nIHRoZSBpbml0IHNlcXVlbmNlIGZvcgpub19jc3IgcmVzZXQgcGxhdGZv
cm1zPyBUaGUgY29tbWVudCBzb3VuZHMgbGlrZSBpdCBpcyBwb3NzaWJsZS4gQnV0IEkgaGVhcmQg
dGhlCm9wcG9zaXRlLgoKPiArCSAqIHdoZW4gUEhZIGlzIHBvd2VyZWQgb24gbmV4dCB0aW1lLgo+
ICsJICovCj4gKwlpZiAocW1wLT5ub2Nzcl9yZXNldCkKPiArCQlnb3RvIHNraXBfcGh5X2RlaW5p
dDsKPiArCj4gKwkJLyogUEhZIHJlc2V0ICovCgpTcHVyaW91cyB0YWIgYmVmb3JlIHRoZSBzdGFy
dCBvZiB0aGUgY29tbWVudC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
