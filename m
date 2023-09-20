Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA367CE79BE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Sep 2023 10:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gesea1Wdo2mj68JEq3aTB0t5dOSqs8ODW9xhEEuxUzc=; b=XUV17bOEVG49of
	pS5iKp7sX0/GuOOn5bM6tZ1n/ZxJqS6Njve6PswCfo62gXXTxB1Iff0YnhQqBHI75YwYxFm/GlBD7
	Fdwgco1mmuK/mOsppAjjGPpFlbIsAQPy8V+N58jCjYV2NoSkvZ6lrt7byH7nMyR84B9VcQzPy9Nbh
	TzqKF+UYi220lnJtDz2JZxtYn4aFMjz3obZEnrtW7ogsF/H8ZOoe9AiQYtpSTFvtxwK/HhnaVtwah
	9FNU+vtXrTzaNLj1iMgOfS9qZCvoPA8Zs4NjbALBF/DluUEF9OrQK/zcZJZ4gLj3deDz3GIMgSv/V
	c0FpEEt7VgXQGLmqDT5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuIv-002aWO-1Z;
	Wed, 20 Sep 2023 10:19:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuIs-002aVQ-1k
	for linux-phy@lists.infradead.org;
	Wed, 20 Sep 2023 10:19:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E569261B54;
	Wed, 20 Sep 2023 10:19:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B3A0C433C8;
	Wed, 20 Sep 2023 10:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695205169;
	bh=OjA7iTECs8f9+839G62xTmbLSGvLzLZmyK1Rhd04rVI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q/c412THfLmc6qea7o9R/VfTdCcbfi8mZ0ttkYhqouACRznUQ57Hgkrh50E+LknXY
	 MsvMbvVdu3CI0iswDjXXT1cE9xD7hw1r7DxwXZHkSCJZ4kkdAMhcTnA8c9iiYaPvFI
	 qxp/Dq5zi8dMXWFL9cqQ7Yh8HtihnHVlOT/w5qdkxQyyaOcMIThvdICKC3l/yruyC/
	 CvnUUY2ViVFNbMN6npMy68oMuxuFq2CEXdjLOYboGmqqXb8QnduuJitRCizNUqQ9MJ
	 1sIT5v+0WLYUzck3AAyVe5MrZ2tHlbHP/3po/cyjALIIIIU4MRASh6jiTa0i16OC6q
	 KaiBFXp2gFQHA==
Date: Wed, 20 Sep 2023 12:19:23 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Can Guo <quic_cang@quicinc.com>, quic_nguyenb@quicinc.com,
	quic_nitirawa@quicinc.com, martin.petersen@oracle.com,
	linux-scsi@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 4/6] phy: qualcomm: phy-qcom-qmp-ufs: Move data structs
 and setting tables to header
Message-ID: <20230920101923.GG4732@thinkpad>
References: <1694411968-14413-1-git-send-email-quic_cang@quicinc.com>
 <1694411968-14413-5-git-send-email-quic_cang@quicinc.com>
 <CAA8EJpoWnXeJKPB04kJW6Qo7ifAnt1u2ZSiq+W2HWOez=hi5gA@mail.gmail.com>
 <20230919121524.GD4732@thinkpad>
 <CAA8EJpoqRBxS7HJrFdRAvv677hKJw+d_K+fN_4ABDrj+68r28w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpoqRBxS7HJrFdRAvv677hKJw+d_K+fN_4ABDrj+68r28w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_031930_704927_9C43961B 
X-CRM114-Status: GOOD (  31.74  )
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

T24gV2VkLCBTZXAgMjAsIDIwMjMgYXQgMDE6MzA6MjFBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBUdWUsIDE5IFNlcHQgMjAyMyBhdCAxNToxNSwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgU2VwIDE0LCAy
MDIzIGF0IDAzOjI4OjU5UE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiA+IE9u
IE1vbiwgMTEgU2VwdCAyMDIzIGF0IDA5OjAxLCBDYW4gR3VvIDxxdWljX2NhbmdAcXVpY2luYy5j
b20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gVG8gbWFrZSB0aGUgY29kZSBtb3JlIHJlYWRhYmxl
LCBtb3ZlIHRoZSBkYXRhIHN0cnVjdHMgYW5kIFBIWSBzZXR0dGluZwo+ID4gPiA+IHRhYmxlcyB0
byBhIGhlYWRlciBmaWxlLCBuYW1lbHkgdGhlIHBoeS1xY29tLXFtcC11ZnMuaC4KPiA+ID4gPgo+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENhbiBHdW8gPHF1aWNfY2FuZ0BxdWljaW5jLmNvbT4KPiA+
ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5j
IHwgODAyICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiAgZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5oIHwgODA1ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgODA2IGluc2VydGlvbnMoKyks
IDgwMSBkZWxldGlvbnMoLSkKPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuaAo+ID4gPgo+ID4gPiBJcyB0aGVyZSBhbnkgcmVh
c29uIHRvIGRvIHNvPyBPdGhlciB0aGFuIGp1c3QgbW92aW5nIHN0dWZmIGFyb3VuZCwgaXQKPiA+
ID4gZG9lc24ndCBnaXZlIHVzIGFueXRoaW5nLiBUaGlzIGhlYWRlciB3aWxsIG5vdCBiZSBzaGFy
ZWQgd2l0aCBhbnkKPiA+ID4gb3RoZXIgZHJpdmVyLiBKdXN0IG1vdmluZyBkYXRhIHRhYmxlcyB0
byB0aGUgaGVhZGVyICh1Z2gsIHN0YXRpYyBkYXRhCj4gPiA+IGluIHRoZSBoZWFkZXIpIGRvZXNu
J3QgbWFrZSBjb2RlIG1vcmUgcmVhZGFibGUuCj4gPiA+Cj4gPgo+ID4gSSB0aGluayB0aGUgbW90
aXZlIGhlcmUgaXMgdG8gbW92ZSB0aGUgc3RhdGljIHRhYmxlcyB0byBvbmUgZmlsZSBhbmQgaGF2
ZSB0aGUKPiA+IHJlc3Qgb2YgdGhlIGNvZGUgaW4gYW5vdGhlci4gQmVjYXVzZSwgdGhlIHN0YXRp
YyB0YWJsZXMgaXRzZWxmIG9jY3VweSAxLjJrIExvQwo+ID4gbm93IGFuZCBpdCBpcyBnb2luZyB0
byBncm93LiBTbyBsZXQncyBrZWVwIHRoZW0gaW4gYSBzaW5nbGUgZmlsZSB0byBhdm9pZCBtaXhp
bmcKPiA+IGl0IHdpdGggcmVzdCBvZiB0aGUgZHJpdmVyIGNvZGUuCj4gCj4gTXkgMmMgaXMgdGhh
dCB0aGlzIGlzIG1vc3RseSB1c2VsZXNzLiBUaGUgaGVhZGVycyBhcmUgZm9yIHNoYXJpbmcsIG5v
dAo+IGZvciBtb3ZpbmcgdGhlIGRhdGEgb3V0IG9mIHRoZSAuYyBmaWxlcy4gTm90IHRvIG1lbnRp
b24gdGhhdCB0aGUKPiBkcml2ZXIgY29kZSBjb21lcyBhZnRlciB0aGUgdGFibGVzLgo+IEknZCBy
ZWFsbHkgc3VnZ2VzdCBzdGFydGluZyBzdWNoIGEgbW92ZSB3aXRoIHNlcGFyYXRpbmcgY29tbW9u
IHBhcnRzCj4gb2YgYWxsIHRoZSBRTVAgZHJpdmVycy4KPiAKCk1ha2VzIHNlbnNlLgoKQ2FuLCBw
bGVhc2UgcHJvcG9zZSBhIHNlcGFyYXRlIHNlcmllcyBpZiB5b3Ugd2FudCB0byBwdXJzdWUgdGhl
IGVmZm9ydC4KQWxzbywgSSdkIHNheSB0aGF0IGluc3RlYWQgb2YgbW92aW5nIHRoZSB0YWJsZXMg
dG8gYSBoZWFkZXIgKHdoaWNoIGRlZmVhdHMgdGhlCnB1cnBvc2Ugb2YgdGhlIGhlYWRlciksIHRo
ZSB0YWJsZXMgY2FuIGJlIG1vdmVkIHRvIGEgc2VwYXJhdGUgLmMgZmlsZS4gTGlrZSwKCnBoeS1x
Y29tLXFtcC11ZnMtdGFibGVzLmMKcGh5LXFjb20tcW1wLXVmcy5jCgpCdHcsIHdoeSBkbyB3ZSBo
YXZlICJwaHktcWNvbSIgcHJlZml4IGluc2lkZSBkcml2ZXJzL3BoeS9xdWFsY29tbS8/CgotIE1h
bmkKCj4gPgo+ID4gLSBNYW5pCj4gPgo+ID4gPiBJZiB5b3UgcmVhbGx5IHdvdWxkIGxpa2UgdG8g
Y2xlYW4gdXAgdGhlIFFNUCBkcml2ZXJzLCBwbGVhc2UgY29uc2lkZXIKPiA+ID4gc3BsaXR0aW5n
IF9jb21tb25fIHBhcnRzLiBCdXQgYXQgdGhpcyBwb2ludCBJIGhpZ2hseSBkb3VidCB0aGF0IGl0
IGlzCj4gPiA+IHBvc3NpYmxlIGluIGEgdXNlZnVsIHdheS4KPiAKPiAKPiAtLSAKPiBXaXRoIGJl
c3Qgd2lzaGVzCj4gRG1pdHJ5CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
