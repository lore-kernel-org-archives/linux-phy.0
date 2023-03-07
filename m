Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78ECAC6FD1E
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0plcb0vH3s3r1hu25JVTZjQg1OQvRkwKXM4zk62IB+k=; b=fFAz34jf6cMUxE
	2uuSqPt9HNwL0koX0c+OIVVEUC7eXaJpPXdQYbEauD6si5WoeAJBPZAvurEzJ8Ymd/+c7bJXGtTKP
	aR4nnqSKP/HGmyDfdYe0MOpZ5fEO898XpCfwaEfaK3JqM+AdKZ/G1yCkGWlfIK1kz/ZDdBzGERio1
	brVkb1CZjzig+orQoaRl3TuRXf6tFkGA6VsV1cRhCimMR60U2WgWecLHrrO6TU1biBAgfy+ACzjdz
	WRId7afxvCw/bOvHyIrJhim/6+zg7ckzs5b/wVEFPRVQ9FtyeLEnLJCHlqzqw0IEEiIld5zbEbdXG
	qH7ej/taWkJ5ETnrNgvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyl-00HZEp-NB; Tue, 07 Mar 2023 11:59:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyU-00HZ0O-7w
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:59:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyH-0006TT-L1; Tue, 07 Mar 2023 12:59:09 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-002TEw-Tj; Tue, 07 Mar 2023 12:59:08 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-002yjF-1B; Tue, 07 Mar 2023 12:59:08 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>
Cc: linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 10/31] phy: motorola: phy-mapphone-mdm6600: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:39 +0100
Message-Id: <20230307115900.2293120-11-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1867; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=LlWCp/mrIzedCIyAGn9JbyooR4/Hi4KhcD8fvdOJsDg=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkByaniSwgAhH0kwu8QxQtWRM6Y2iAfAS0dBhDj 6Sq6LKM95WJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmpwAKCRDB/BR4rcrs CeffB/46mrzSpO/5JJWwfJfLxSPbtQKbxREE0ANI3idY/2mJ2020lAdSRP3/66OofLqz9tyEHCv /Z+j+GYLiTZ0lpgZD30qIq6ZdlsIoFwUW7/QW9jXkQ8N5xFYzJ5AOtsS0JGg0wt8PVTahm2DtJR xxijOF93lrLv9IRzytFJWSqgfyDFHAT3IZ6fh1PUq1tzlow0TGNFSrcmqiDNKJ8AUaNY9ZzLKW9 HglYnve1Now8fhy/zDI+QWZ7NW+Usg5/CWQVBioL09oGvGE8ppPVG53NKs2JfbWGv0GjZu36GH1 /F6KD9XxosnOVU6K6FU3AAf7d9+VCcd0xVQteTsCY0On5WID
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_035922_333357_2859D916 
X-CRM114-Status: GOOD (  15.59  )
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
dmVycy9waHkvbW90b3JvbGEvcGh5LW1hcHBob25lLW1kbTY2MDAuYyB8IDYgKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1tYXBwaG9uZS1tZG02NjAwLmMgYi9kcml2ZXJzL3Bo
eS9tb3Rvcm9sYS9waHktbWFwcGhvbmUtbWRtNjYwMC5jCmluZGV4IDNjZDRkNTFjMjQ3Yy4uMWQ1
Njc2MDRiNjUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9tb3Rvcm9sYS9waHktbWFwcGhvbmUt
bWRtNjYwMC5jCisrKyBiL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1tYXBwaG9uZS1tZG02NjAw
LmMKQEAgLTYzNCw3ICs2MzQsNyBAQCBzdGF0aWMgaW50IHBoeV9tZG02NjAwX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIGVycm9yOwogfQogCi1zdGF0aWMgaW50
IHBoeV9tZG02NjAwX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQorc3RhdGlj
IHZvaWQgcGh5X21kbTY2MDBfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7
CiAJc3RydWN0IHBoeV9tZG02NjAwICpkZGF0YSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYp
OwogCXN0cnVjdCBncGlvX2Rlc2MgKnJlc2V0X2dwaW8gPSBkZGF0YS0+Y3RybF9ncGlvc1tQSFlf
TURNNjYwMF9SRVNFVF07CkBAIC02NTMsMTMgKzY1MywxMSBAQCBzdGF0aWMgaW50IHBoeV9tZG02
NjAwX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWNhbmNlbF9kZWxheWVk
X3dvcmtfc3luYygmZGRhdGEtPm1vZGVtX3dha2Vfd29yayk7CiAJY2FuY2VsX2RlbGF5ZWRfd29y
a19zeW5jKCZkZGF0YS0+Ym9vdHVwX3dvcmspOwogCWNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygm
ZGRhdGEtPnN0YXR1c193b3JrKTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgc3RydWN0IHBs
YXRmb3JtX2RyaXZlciBwaHlfbWRtNjYwMF9kcml2ZXIgPSB7CiAJLnByb2JlID0gcGh5X21kbTY2
MDBfcHJvYmUsCi0JLnJlbW92ZSA9IHBoeV9tZG02NjAwX3JlbW92ZSwKKwkucmVtb3ZlX25ldyA9
IHBoeV9tZG02NjAwX3JlbW92ZSwKIAkuZHJpdmVyID0gewogCQkubmFtZSA9ICJwaHktbWFwcGhv
bmUtbWRtNjYwMCIsCiAJCS5wbSA9ICZwaHlfbWRtNjYwMF9wbV9vcHMsCi0tIAoyLjM5LjEKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
