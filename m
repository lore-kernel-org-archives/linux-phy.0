Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57329C0219D
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 13:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ca4UFz03H1d+Xc5goO0ec/4MyRYdwWIgIKW+jCp7tS4=; b=PveZ2vBJQzfR2r
	2h6PCyTCnFJe3uIBy1sjD4VNLNyMk7rFEt/+/EuGfn4/q1D+Q4gW+kElQ7wskWWREo3P3taq8n+cZ
	hNhzSlUoav5COWT++X2pupS7PY7EX7g39semjX8qgi+5BW53OxdPgMVUDSdT6RmMRWiTRaRHHdYjo
	N/v2TonU5teDqpERbqKUYAVrb3GpQ7PPwFPCOefsqC4x55VnMN0X2KE8iHYMSvnLMLV1lPmeMoGje
	Mico2HAaiNXe/5bz7PHys+4U4AuFZ5jroWrl1GiCKHWJPVk65OTR7DCm34LzQOsyvzYczwwD2KH06
	vgoBmYj5WhT6CINRMrNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thU6D-000000000sT-0Jn4;
	Mon, 10 Feb 2025 13:45:21 +0000
Received: from mr85p00im-ztdg06011201.me.com ([17.58.23.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thTtu-0000000HZ0j-2uqn
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 13:32:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=tfkcqBi0ou5N+iPlIoNtZJvvEZ4xTbBbnOJsMG5xchk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:x-icloud-hme;
	b=RN42a6ZMjslZjkVYfWXKILcfiyrKlYgS2WNzV+wR8w1UgukG/CbJ/gtXdZvplUD1b
	 uWWx/FH6x8aORC9gzdBdiq4saxtIFWxCNAZS+RCraFc3kn0/BFhrN8dNTIQVzPdPcm
	 gY/jxQNBNOKq26cMPMR5KQshejjEUCIUtJH3NIb6O4Kmswqu36SRlvp/JRASJrAcCs
	 UXOBZ5BBvrB81YOYwRXT7kzU9ytBplMb4xy3tlSWsgdyt7tfOByOJ7yihCnRbvItW5
	 ElW5Rg4hIyRUTCCJ+P0dXivXvLh06ThhXTrt2MlS0GoGJ0DxAuRMdJy2bOMZd5UVtL
	 9m1JKDcXsXG4A==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-ztdg06011201.me.com (Postfix) with ESMTPSA id 4CBE896018B;
	Mon, 10 Feb 2025 13:32:33 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Mon, 10 Feb 2025 21:32:03 +0800
Subject: [PATCH 2/2] phy: core: Remove API devm_phy_destroy()
MIME-Version: 1.0
Message-Id: <20250210-remove-apis-v1-2-2aaa866315a7@quicinc.com>
References: <20250210-remove-apis-v1-0-2aaa866315a7@quicinc.com>
In-Reply-To: <20250210-remove-apis-v1-0-2aaa866315a7@quicinc.com>
To: Jonathan Corbet <corbet@lwn.net>, Alex Shi <alexs@kernel.org>, 
 Yanteng Si <si.yanteng@linux.dev>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: RZ9wNBzzm8BlNtPvaML8Qa5-SHehXFEi
X-Proofpoint-GUID: RZ9wNBzzm8BlNtPvaML8Qa5-SHehXFEi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_07,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 clxscore=1015
 mlxscore=0 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2502100113
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_053238_760195_A06AAC35 
X-CRM114-Status: GOOD (  10.63  )
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

RnJvbTogWmlqdW4gSHUgPHF1aWNfemlqdWh1QHF1aWNpbmMuY29tPgoKQVBJIGRldm1fcGh5X2Rl
c3Ryb3koKSBoYXMgbm90IGhhZCBjYWxsZXJzIHNpbmNlIDIwMTMtMDktMjcKd2hlbiBpdCB3YXMg
aW50cm9kdWNlZC4KClJlbW92ZSB0aGUgQVBJLgoKU2lnbmVkLW9mZi1ieTogWmlqdW4gSHUgPHF1
aWNfemlqdWh1QHF1aWNpbmMuY29tPgotLS0KIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9waHkv
cGh5LnJzdCAgICAgICAgICAgICAgICAgICAgfCAgNiArKy0tLS0KIERvY3VtZW50YXRpb24vdHJh
bnNsYXRpb25zL3poX0NOL2RyaXZlci1hcGkvcGh5L3BoeS5yc3QgfCAgNyArKy0tLS0tCiBkcml2
ZXJzL3BoeS9waHktY29yZS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTcg
LS0tLS0tLS0tLS0tLS0tLS0KIGluY2x1ZGUvbGludXgvcGh5L3BoeS5oICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgNSAtLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDMxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVy
LWFwaS9waHkvcGh5LnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9waHkvcGh5LnJzdApp
bmRleCBiZTM2ODdhMmExMWJiZjg0ZTZlNTU2MWIxMTkzMWVhNmRiOTg0NDM0Li5jYWUwM2Q4YTQ4
MTJiM2M0Y2ZjYTY0MjcyY2M2YjhmODNhODFkMWM4IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L2RyaXZlci1hcGkvcGh5L3BoeS5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3Bo
eS9waHkucnN0CkBAIC0xNzMsMTMgKzE3MywxMSBAQCBEZXN0cm95aW5nIHRoZSBQSFkKID09PT09
PT09PT09PT09PT09PQogCiBXaGVuIHRoZSBkcml2ZXIgdGhhdCBjcmVhdGVkIHRoZSBQSFkgaXMg
dW5sb2FkZWQsIGl0IHNob3VsZCBkZXN0cm95IHRoZSBQSFkgaXQKLWNyZWF0ZWQgdXNpbmcgb25l
IG9mIHRoZSBmb2xsb3dpbmcgMiBBUElzOjoKK2NyZWF0ZWQgdXNpbmcgdGhlIGZvbGxvd2luZyBB
UEk6OgogCiAJdm9pZCBwaHlfZGVzdHJveShzdHJ1Y3QgcGh5ICpwaHkpOwotCXZvaWQgZGV2bV9w
aHlfZGVzdHJveShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBwaHkgKnBoeSk7CiAKLUJvdGgg
dGhlc2UgQVBJcyBkZXN0cm95IHRoZSBQSFkgYW5kIGRldm1fcGh5X2Rlc3Ryb3kgZGVzdHJveXMg
dGhlIGRldnJlcwotYXNzb2NpYXRlZCB3aXRoIHRoaXMgUEhZLgorVGhlIEFQSSBkZXN0cm95cyB0
aGUgUEhZLgogCiBQTSBSdW50aW1lCiA9PT09PT09PT09CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL3RyYW5zbGF0aW9ucy96aF9DTi9kcml2ZXItYXBpL3BoeS9waHkucnN0IGIvRG9jdW1lbnRh
dGlvbi90cmFuc2xhdGlvbnMvemhfQ04vZHJpdmVyLWFwaS9waHkvcGh5LnJzdAppbmRleCAyZDNm
OThkZWI5MjAzNWM0NGZjYjFmZjBlM2RjODU0MzA1MzE0MGY2Li4zN2MyM2ZjZWJmMTFmMzk3ZDBk
YzUwMmJiYmExMWE3NGM1MjVmMDg1IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL3RyYW5zbGF0
aW9ucy96aF9DTi9kcml2ZXItYXBpL3BoeS9waHkucnN0CisrKyBiL0RvY3VtZW50YXRpb24vdHJh
bnNsYXRpb25zL3poX0NOL2RyaXZlci1hcGkvcGh5L3BoeS5yc3QKQEAgLTE2NCwxNCArMTY0LDEx
IEBAIFBIWSDlhbPogZTnmoTorr7lpIfotYTmupDjgIIKIOmUgOavgSBQSFkKID09PT09PT09CiAK
LeW9k+WIm+W7uiBQSFkg55qE6amx5Yqo56iL5bqP6KKr5Y246L295pe277yM5a6D5bqU6K+l5L2/
55So5Lul5LiLIDIg5LiqIEFQSSDkuYvkuIDplIDmr4HlhbbliJsKLeW7uueahCBQSFk6Ogor5b2T
5Yib5bu6IFBIWSDnmoTpqbHliqjnqIvluo/ooqvljbjovb3ml7bvvIzlroPlupTor6Xkvb/nlKjk
u6XkuIsgQVBJIOmUgOavgeWFtuWIm+W7uueahCBQSFk6OgogCiAJdm9pZCBwaHlfZGVzdHJveShz
dHJ1Y3QgcGh5ICpwaHkpOwotCXZvaWQgZGV2bV9waHlfZGVzdHJveShzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHN0cnVjdCBwaHkgKnBoeSk7CiAKLei/meS4pOS4qiBBUEkg6YO95Lya6ZSA5q+BIFBIWe+8
jOW5tuS4lCBkZXZtX3BoeV9kZXN0cm95IOS8mumUgOavgeS4juatpCBQSFkg5YWzCi3ogZTnmoQg
ZGV2cmVz44CCCivov5nkuKogQVBJIOS8mumUgOavgSBQSFnjgIIKIAogUE0gUnVudGltZQogPT09
PT09PT09PQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYyBiL2RyaXZlcnMvcGh5
L3BoeS1jb3JlLmMKaW5kZXggZGQ2MzAyZGZkMTRkMmVjMDYwODU3ZmMwMTkyNjgwOTZjMzNlMzdh
Mi4uOGUwZTExNTUzZTM2OWUwNmY1ZWU0Y2RiYjExMWI0ZGRiMWIzNGU3NCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9waHkvcGh5LWNvcmUuYworKysgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCkBAIC0x
MTA3LDIzICsxMTA3LDYgQEAgdm9pZCBwaHlfZGVzdHJveShzdHJ1Y3QgcGh5ICpwaHkpCiB9CiBF
WFBPUlRfU1lNQk9MX0dQTChwaHlfZGVzdHJveSk7CiAKLS8qKgotICogZGV2bV9waHlfZGVzdHJv
eSgpIC0gZGVzdHJveSB0aGUgUEhZCi0gKiBAZGV2OiBkZXZpY2UgdGhhdCB3YW50cyB0byByZWxl
YXNlIHRoaXMgcGh5Ci0gKiBAcGh5OiB0aGUgcGh5IHJldHVybmVkIGJ5IGRldm1fcGh5X2dldCgp
Ci0gKgotICogZGVzdHJveXMgdGhlIGRldnJlcyBhc3NvY2lhdGVkIHdpdGggdGhpcyBwaHkgYW5k
IGludm9rZXMgcGh5X2Rlc3Ryb3kKLSAqIHRvIGRlc3Ryb3kgdGhlIHBoeS4KLSAqLwotdm9pZCBk
ZXZtX3BoeV9kZXN0cm95KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHBoeSAqcGh5KQotewot
CWludCByOwotCi0JciA9IGRldnJlc19yZWxlYXNlKGRldiwgZGV2bV9waHlfY29uc3VtZSwgZGV2
bV9waHlfbWF0Y2gsIHBoeSk7Ci0JZGV2X1dBUk5fT05DRShkZXYsIHIsICJjb3VsZG4ndCBmaW5k
IFBIWSByZXNvdXJjZVxuIik7Ci19Ci1FWFBPUlRfU1lNQk9MX0dQTChkZXZtX3BoeV9kZXN0cm95
KTsKLQogLyoqCiAgKiBfX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcigpIC0gY3JlYXRlL3JlZ2lz
dGVyIHBoeSBwcm92aWRlciB3aXRoIHRoZSBmcmFtZXdvcmsKICAqIEBkZXY6IHN0cnVjdCBkZXZp
Y2Ugb2YgdGhlIHBoeSBwcm92aWRlcgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9waHkvcGh5
LmggYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAppbmRleCAwNjAzN2E3ZWVmYzRiMDMxOTAwODA2
NWQxNDJjOWYxY2FiYTJjNzRkLi42NmViNjY0MjQ5ZGRhYTY2MzViZjgwZDhkYjExNWNiMjE0NzNj
ZWI4IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAorKysgYi9pbmNsdWRlL2xp
bnV4L3BoeS9waHkuaApAQCAtMjc4LDcgKzI3OCw2IEBAIHN0cnVjdCBwaHkgKnBoeV9jcmVhdGUo
c3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUsCiBzdHJ1Y3QgcGh5
ICpkZXZtX3BoeV9jcmVhdGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5vZGUsCiAJCQkgICAgY29uc3Qgc3RydWN0IHBoeV9vcHMgKm9wcyk7CiB2b2lkIHBoeV9kZXN0
cm95KHN0cnVjdCBwaHkgKnBoeSk7Ci12b2lkIGRldm1fcGh5X2Rlc3Ryb3koc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QgcGh5ICpwaHkpOwogc3RydWN0IHBoeV9wcm92aWRlciAqX19vZl9waHlf
cHJvdmlkZXJfcmVnaXN0ZXIoc3RydWN0IGRldmljZSAqZGV2LAogCXN0cnVjdCBkZXZpY2Vfbm9k
ZSAqY2hpbGRyZW4sIHN0cnVjdCBtb2R1bGUgKm93bmVyLAogCXN0cnVjdCBwaHkgKiAoKm9mX3hs
YXRlKShzdHJ1Y3QgZGV2aWNlICpkZXYsCkBAIC01MjEsMTAgKzUyMCw2IEBAIHN0YXRpYyBpbmxp
bmUgdm9pZCBwaHlfZGVzdHJveShzdHJ1Y3QgcGh5ICpwaHkpCiB7CiB9CiAKLXN0YXRpYyBpbmxp
bmUgdm9pZCBkZXZtX3BoeV9kZXN0cm95KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHBoeSAq
cGh5KQotewotfQotCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBwaHlfcHJvdmlkZXIgKl9fb2ZfcGh5
X3Byb3ZpZGVyX3JlZ2lzdGVyKAogCXN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9u
b2RlICpjaGlsZHJlbiwgc3RydWN0IG1vZHVsZSAqb3duZXIsCiAJc3RydWN0IHBoeSAqICgqb2Zf
eGxhdGUpKHN0cnVjdCBkZXZpY2UgKmRldiwKCi0tIAoyLjM0LjEKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
