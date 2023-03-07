Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4AD8C6FA99
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2luGPtmf6uDUjF7E4ya6Jwsa+J003KWBGzaVzwbPVI8=; b=T2mAo5yn3yYNqc
	Ziz0E4N9XYd3d7ap2GuRDyw+NgtUtWCm4H9sA849drDR89d+h40u1CdYYMRM8lK8ko2agXc9VbgWS
	Zewvy7JDSApUaMA10CR6UTR3we8L6nlnDDXxMCnaXGwaruJP+YzgMJuKKPe3A1fRs9RZNLbnaSvYQ
	r8VFCjcMYJtL7QDMBHB7/MFPFtjEEsOFsKhnTBey/tVmSiScBEZDpx8i9heQ5FyEQmae/RmMC8t2c
	vBPIDcnO9/hH8A1p1DoHEZ7lbP0cmoVi8vbYQA4VPVoGXVucLf4aW6IEdW5Cu7WKPeaALP5r6YGj8
	9/3Yhh1vEdWzU1blNaIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVzw-00HZzE-9Q; Tue, 07 Mar 2023 12:00:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyj-00HZD8-DZ
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Xn2FWRD6rtMGAg/F68bObA8/ElnGWU23kOhgdyhavDw=; b=PpSeTMM1Ux8yLOt3fA7MWhghnO
	iGYVZWDUL78kI04ZIWbIp8V3Reh83o0CiMRLridZ5TwMC1+3lZDsvthROLsHxyMHpsdBlfyvCdaRU
	PxoW9nyjp+GzDT7OhU5DgHkfXON5nSuDEbx9SpxUM96gmrZSjraXPX4pKSmb1A6BXOyF9SB85ay7G
	Tx/GwxOKzUnufdpvRAR8M/CVFrw93S+wOCrveQCk4mspQKKLCBHAcvHt99EifiIFIVgRNNbI8qjW7
	4/yeV4Ip2st2imnmJ1ahBfAvk8ai8dOV9FPKToKXJZel3GbXAJzOjqZ+hleXMXXHskySOFJidpMnS
	VfLkDacQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyb-00H2AG-2g
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-0006T5-3W; Tue, 07 Mar 2023 12:59:10 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyE-002TES-Vg; Tue, 07 Mar 2023 12:59:06 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyE-002yij-Bb; Tue, 07 Mar 2023 12:59:06 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Icenowy Zheng <uwu@icenowy.me>
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@pengutronix.de
Subject: [PATCH 01/31] phy: allwinner: phy-sun4i-usb: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:30 +0100
Message-Id: <20230307115900.2293120-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1919; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=A5l2lPoT4HwDDiKEGOetfLehy9xFEfoPwry6wSlMEIE=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByZ+ndr34KC6+DU92fWTYCRBx4D/esBgsXBP8 fUFnd0kDF2JATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmfgAKCRDB/BR4rcrs Cd8FB/4sVyrd21Uvk3d9LFOA2z189btbrMjnjrgUaePBHfcLUhL4vOXbmh+Hm3zHVUXOPC5m4yd jvMxSaA2GokI/ztFBvHqe/3g6A2f4MsZktdk/T8OdYbnkm9b2aCeRmGKATFJcwTDz0DtWugU1QY RUxpwCRvXpBDxH+tkajVez4tK+ohcLarFEnQu+PjVZEvdOUobkPjgLxPuL1CwBnKj3xK04xpngu zBe6pG6tGfclP6hDb9j02r40kb6Ozk9jpCMz41gW0r7WP6mtBxGsPRVPnIaBNUdH+grYMZoTvoo WrVr7zHRDhP96xKjTwk/3OMViaZHUio00HXlgMtvddUi756R
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115931_666127_6C2F131F 
X-CRM114-Status: GOOD (  17.06  )
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

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCmFuZCB0aGlzIHR5
cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUg
aXMgYQpxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuIHZvaWQuIEluIHRo
ZSBmaXJzdCBzdGVwIG9mIHRoaXMKcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAu
cmVtb3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwp2b2lkLgoKVHJpdmlhbGx5IGNvbnZl
cnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJp
dmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMgYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIv
cGh5LXN1bjRpLXVzYi5jCmluZGV4IGZiY2Q3MDE0YWI0My4uNmE3NGU1Y2UxODBhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jCisrKyBiL2RyaXZlcnMv
cGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKQEAgLTY5OCw3ICs2OTgsNyBAQCBzdGF0aWMg
c3RydWN0IHBoeSAqc3VuNGlfdXNiX3BoeV94bGF0ZShzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJcmV0
dXJuIGRhdGEtPnBoeXNbYXJncy0+YXJnc1swXV0ucGh5OwogfQogCi1zdGF0aWMgaW50IHN1bjRp
X3VzYl9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9p
ZCBzdW40aV91c2JfcGh5X3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewog
CXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7CiAJc3RydWN0IHN1bjRpX3VzYl9waHlf
ZGF0YSAqZGF0YSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwpAQCAtNzExLDggKzcxMSw2IEBAIHN0
YXRpYyBpbnQgc3VuNGlfdXNiX3BoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAkJZGV2bV9mcmVlX2lycShkZXYsIGRhdGEtPnZidXNfZGV0X2lycSwgZGF0YSk7CiAKIAlj
YW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmRhdGEtPmRldGVjdCk7Ci0KLQlyZXR1cm4gMDsKIH0K
IAogc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBzdW40aV91c2JfcGh5MF9jYWJsZVtdID0gewpA
QCAtMTA1NCw3ICsxMDUyLDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc3VuNGlfdXNiX3Bo
eV9vZl9tYXRjaCk7CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHN1bjRpX3VzYl9w
aHlfZHJpdmVyID0gewogCS5wcm9iZQk9IHN1bjRpX3VzYl9waHlfcHJvYmUsCi0JLnJlbW92ZQk9
IHN1bjRpX3VzYl9waHlfcmVtb3ZlLAorCS5yZW1vdmVfbmV3ID0gc3VuNGlfdXNiX3BoeV9yZW1v
dmUsCiAJLmRyaXZlciA9IHsKIAkJLm9mX21hdGNoX3RhYmxlCT0gc3VuNGlfdXNiX3BoeV9vZl9t
YXRjaCwKIAkJLm5hbWUgID0gInN1bjRpLXVzYi1waHkiLAotLSAKMi4zOS4xCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
