Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E690CD5BA6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Sep 2023 12:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tLDp4ZNFv9rjxH3R/pEcG28SWAadN4hHhrh19mggIQ=; b=q0x0+8YLaTslUs
	mS7OIjJSaxLg0oDptOZXDWVUBOvLln40E3r61qyI3RK2rKfZCDVHqEgrPKhdkSx1S18mSIyzgOr8m
	Z2mgwRY6k7hvH3u1+eFzw9vM2M3IHrsWcl3wAu7SYdgI4qhPUDWmTpmC0zzEDDisTU3UAPnoUvrok
	MDt+gUIAav1SivaKwJB+YrJfcYzcP4mKYUi/hAhl1Q2JLhO2JU0C2UGBfylWeJt8HNC1vzS0+XkpQ
	/p1T6aH3vfvA7Fb+TQ3KsdTw4H9XZZrXQo6TvKsmAKkpJYHYjPmf9d9bDgtpXA5A3X//H/JQ5M2bd
	wKm7jwyF2w//F44z5nkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiZdg-000NrG-0i;
	Tue, 19 Sep 2023 12:15:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiZdd-000NqM-2q
	for linux-phy@lists.infradead.org;
	Tue, 19 Sep 2023 12:15:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4B594B81128;
	Tue, 19 Sep 2023 12:15:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96AB2C433C7;
	Tue, 19 Sep 2023 12:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695125731;
	bh=xvCx7ZWNm6jnB4edU9vEvToGC6Z5Sc/hEVmL8SgiqZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HZseuY35WtH77s0q6NFTQCnN8iQjLfnq+vTD+TAUlrk1wwvuAA+DFYeeWDHg+Fvv2
	 2p6iwRJRenvbl6ao3MJAEqtuyGay6DGmaLxjZg6b1l2VHtsnzUtBHtes7Oij33Zb77
	 ZfFX+F1k6Mf3stSs08AxTMhP+Go1OwBLN5x1+1uwlvf/2EhbrGuYo3QXWoHcFjP2Gw
	 ZyDw0apc9XL/oqWyk+cv6tI5vgjRRTRkDU87aT5x4nGDyfPua3g5WTFmVoZeyMe+LT
	 5Nt4CcQC2lHyCUj1KsDJGxI7CwdjierL8EemVsHwQ7gRYVYCp+RKS6T+xspknKRDa9
	 bZAI19Hco5l0g==
Date: Tue, 19 Sep 2023 14:15:24 +0200
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
Message-ID: <20230919121524.GD4732@thinkpad>
References: <1694411968-14413-1-git-send-email-quic_cang@quicinc.com>
 <1694411968-14413-5-git-send-email-quic_cang@quicinc.com>
 <CAA8EJpoWnXeJKPB04kJW6Qo7ifAnt1u2ZSiq+W2HWOez=hi5gA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpoWnXeJKPB04kJW6Qo7ifAnt1u2ZSiq+W2HWOez=hi5gA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_051534_069337_C0E28159 
X-CRM114-Status: GOOD (  21.80  )
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

T24gVGh1LCBTZXAgMTQsIDIwMjMgYXQgMDM6Mjg6NTlQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBNb24sIDExIFNlcHQgMjAyMyBhdCAwOTowMSwgQ2FuIEd1byA8cXVpY19j
YW5nQHF1aWNpbmMuY29tPiB3cm90ZToKPiA+Cj4gPiBUbyBtYWtlIHRoZSBjb2RlIG1vcmUgcmVh
ZGFibGUsIG1vdmUgdGhlIGRhdGEgc3RydWN0cyBhbmQgUEhZIHNldHR0aW5nCj4gPiB0YWJsZXMg
dG8gYSBoZWFkZXIgZmlsZSwgbmFtZWx5IHRoZSBwaHktcWNvbS1xbXAtdWZzLmguCj4gPgo+ID4g
U2lnbmVkLW9mZi1ieTogQ2FuIEd1byA8cXVpY19jYW5nQHF1aWNpbmMuY29tPgo+ID4gLS0tCj4g
PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIHwgODAyICstLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtdWZzLmggfCA4MDUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAy
IGZpbGVzIGNoYW5nZWQsIDgwNiBpbnNlcnRpb25zKCspLCA4MDEgZGVsZXRpb25zKC0pCj4gPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMu
aAo+IAo+IElzIHRoZXJlIGFueSByZWFzb24gdG8gZG8gc28/IE90aGVyIHRoYW4ganVzdCBtb3Zp
bmcgc3R1ZmYgYXJvdW5kLCBpdAo+IGRvZXNuJ3QgZ2l2ZSB1cyBhbnl0aGluZy4gVGhpcyBoZWFk
ZXIgd2lsbCBub3QgYmUgc2hhcmVkIHdpdGggYW55Cj4gb3RoZXIgZHJpdmVyLiBKdXN0IG1vdmlu
ZyBkYXRhIHRhYmxlcyB0byB0aGUgaGVhZGVyICh1Z2gsIHN0YXRpYyBkYXRhCj4gaW4gdGhlIGhl
YWRlcikgZG9lc24ndCBtYWtlIGNvZGUgbW9yZSByZWFkYWJsZS4KPiAKCkkgdGhpbmsgdGhlIG1v
dGl2ZSBoZXJlIGlzIHRvIG1vdmUgdGhlIHN0YXRpYyB0YWJsZXMgdG8gb25lIGZpbGUgYW5kIGhh
dmUgdGhlCnJlc3Qgb2YgdGhlIGNvZGUgaW4gYW5vdGhlci4gQmVjYXVzZSwgdGhlIHN0YXRpYyB0
YWJsZXMgaXRzZWxmIG9jY3VweSAxLjJrIExvQwpub3cgYW5kIGl0IGlzIGdvaW5nIHRvIGdyb3cu
IFNvIGxldCdzIGtlZXAgdGhlbSBpbiBhIHNpbmdsZSBmaWxlIHRvIGF2b2lkIG1peGluZwppdCB3
aXRoIHJlc3Qgb2YgdGhlIGRyaXZlciBjb2RlLgoKLSBNYW5pCgo+IElmIHlvdSByZWFsbHkgd291
bGQgbGlrZSB0byBjbGVhbiB1cCB0aGUgUU1QIGRyaXZlcnMsIHBsZWFzZSBjb25zaWRlcgo+IHNw
bGl0dGluZyBfY29tbW9uXyBwYXJ0cy4gQnV0IGF0IHRoaXMgcG9pbnQgSSBoaWdobHkgZG91YnQg
dGhhdCBpdCBpcwo+IHBvc3NpYmxlIGluIGEgdXNlZnVsIHdheS4KPiAKPiAtLSAKPiBXaXRoIGJl
c3Qgd2lzaGVzCj4gRG1pdHJ5CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
