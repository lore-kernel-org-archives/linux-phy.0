Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7E3DCCF2C1
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 14:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3k2Ra/4js4LAADErX0cDMX9HHsx+AbnInMW00XKTPI=; b=GT4uwD8zrwX2G4
	FBPrQEhHkFCPrM7kbRiLKUaeeJPDMHcCO36a/vk9+O1tQAnG9fX63JXavrVmicr+Cqpff/mrFMLGr
	8cS81H8L6SP3Xki41c31u92ek/L6g2Ak7FUb6eEyMq1xfDkw0kNgKlBfMTOPkKnNV3TafMFcSETci
	L2cgKUiG+aXnoYvEPUnyqKtW8A/vMHtDM2VcFlhxLW0lR8n4A4PoM9zkX7E0pJIDBAEQFL/MLKl3j
	iHGFD3ym0vmASiM/K5ce/Flbsj+39oCWH0ZTBH1SRKWhbPkeuGrHaF7QzEKZ50hYyIpHq4j9+D2dK
	JN8GTv8GISch92s6k0wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjM2-00000003DLc-1gwd;
	Fri, 16 Oct 2026 14:56:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLx-00000003DHx-3VpF
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 14:56:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0443460218;
	Fri, 16 Oct 2026 14:56:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC679C2BD04;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792162572;
	bh=gkrZ3n9shfxAbVLU7LrBVA96LpfGfrsV4xz6J6pmyHY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=PncvVlT9tVOZYGdWao4TGGk2SZmeDnxN5Sm3DX0QXYnRAERX80d/NMolxOIEGr/xt
	 OP3MM7luHy0WhqOee8bwEgf8RPk4p09OdOBpA46sQE2yrR4g1HjCKw4yWrXhqXwmtE
	 5HQ2wtdXX2NIlhH4E7vV+d6ZQRHyh2NKZ58TrQJCWT+xkb38Ibhn+/c1uRTLn9/Ho0
	 3dre8nXU9Ufk7ZDl2S4jgVN2krRmF1e6eLWxQKjdjaDbZG9+SW9P9eDIbHhnAnDzmZ
	 KBssk5CGrtz7VmGwo5qqGeoyVgV9FBoYvm5554qT7p5UDFhS2jJ5Xx3h23io3E11nq
	 VIR78OpUon+Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95754CCA462;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Fri, 16 Oct 2026 15:56:14 +0100
Subject: [PATCH v3 4/6] phy: qcom-mipi-csi2: Add lane mask and lane
 polarity helpers
MIME-Version: 1.0
Message-Id: <20261016-x1e-cphy-rfc-v3-4-40a346a72153@gmail.com>
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
In-Reply-To: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792162570; l=3920;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=IdF/EPNDqFiB6gXpG01nIGTiB2hoKtKKWj6IdgpRK5U=;
 b=R5a+jiNCha6yXWvYSmmeHB5+h8p6taT+wYlHoIpK0DQCHnwHwxMdkOVOBPiEzQm4PVOoE8V43
 NADsgC20YQwAU2Ewj8TbN7tCAJY0ARKrCyHNlJ9VYUrNBfjSuApTHU9
X-Developer-Key: i=geocausa@gmail.com; a=ed25519;
 pk=KyQk/iWbxsikewDBh0SwlHI51RvAqahD3loqmRp9DVI=
X-Endpoint-Received: by B4 Relay for geocausa@gmail.com/20261015 with
 auth_id=1199
X-Original-From: George Neacsu <geocausa@gmail.com>
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
Reply-To: geocausa@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

RnJvbTogR2VvcmdlIE5lYWNzdSA8Z2VvY2F1c2FAZ21haWwuY29tPgoKTW92ZSB0aGUgQ1RSTDUg
bGFuZSBtYXNrIGFuZCB0aGUgQ1RSTDkgbGFuZSBwb2xhcml0eSB3cml0ZXMgb3V0IG9mCnBoeV9x
Y29tX21pcGlfY3NpMl9sYW5lc19lbmFibGUoKSBpbnRvIHR3byBoZWxwZXJzLApwaHlfcWNvbV9t
aXBpX2NzaTJfbGFuZV9tYXNrKCkgYW5kCnBoeV9xY29tX21pcGlfY3NpMl9kcGh5X2xhbmVfcG9s
YXJpdGllcygpLiBBIEMtUEhZIHBhdGggbmVlZHMgYQpkaWZmZXJlbnQgbGFuZSBtYXNrIGFuZCBu
byBwb2xhcml0aWVzLCBhbmQgd2l0aCB0aGUgaGVscGVycyBpdCBjYW4gYmUKYWRkZWQgd2l0aG91
dCBhIGdvdG8gb3IgYSBzZWNvbmQgY29weSBvZiB0aGUgY29tbW9uIHNldHVwLgoKTm8gZnVuY3Rp
b25hbCBjaGFuZ2UuCgpTdWdnZXN0ZWQtYnk6IEJyeWFuIE8nRG9ub2dodWUgPGJvZEBrZXJuZWwu
b3JnPgpTdWdnZXN0ZWQtYnk6IE5paGFsIEt1bWFyIEd1cHRhIDxuaWhhbC5ndXB0YUBvc3MucXVh
bGNvbW0uY29tPgpBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS1vcHVzLTUtNQpTaWduZWQtb2Zm
LWJ5OiBHZW9yZ2UgTmVhY3N1IDxnZW9jYXVzYUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmMgfCA2NCArKysrKysrKysrKysr
Ky0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2ky
LTNwaC1kcGh5LmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItM3Bo
LWRwaHkuYwppbmRleCBiMmQ0ZWMzZTgxLi5hNDRlMTA0MzAxIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYworKysgYi9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYwpAQCAtMjY4LDM0ICsy
NjgsMzIgQEAgcGh5X3Fjb21fbWlwaV9jc2kyX2dlbjJfY29uZmlnX2xhbmVzKHN0cnVjdCBtaXBp
X2NzaTJwaHlfZGV2aWNlICpjc2kycGh5LAogCX0KIH0KIAotc3RhdGljIGludCBwaHlfcWNvbV9t
aXBpX2NzaTJfbGFuZXNfZW5hYmxlKHN0cnVjdCBtaXBpX2NzaTJwaHlfZGV2aWNlICpjc2kycGh5
LAotCQkJCQkgICBzdHJ1Y3QgbWlwaV9jc2kycGh5X3N0cmVhbV9jZmcgKmNmZykKKy8qCisgKiBD
U0lfQ09NTU9OX0NUUkw1IGlzIGEgcGh5c2ljYWwgbGFuZSBwb3dlci11cCBiaXRtYXA6CisgKiAt
IEJpdHMgWzAsMiw0LDZdIOKGkiBELVBIWSBkYXRhIGxhbmVzKExOMCwgTE4yLCBMTjQsIExONikK
KyAqIC0gQml0cyBbMSwzLDVdIOKGkiBDLVBIWSB0cmlvIGxhbmVzKExOMSwgTE4zLCBMTjUpCisg
KiAtIEJpdCBbN10g4oaSIEQtUEhZIGNsb2NrIGxhbmUoTE5DSykgZGVkaWNhdGVkIGNsb2NrIGVu
YWJsZQorICovCitzdGF0aWMgdTggcGh5X3Fjb21fbWlwaV9jc2kyX2xhbmVfbWFzayhzdHJ1Y3Qg
bWlwaV9jc2kycGh5X2RldmljZSAqY3NpMnBoeSwKKwkJCQkgICAgICAgc3RydWN0IG1pcGlfY3Np
MnBoeV9zdHJlYW1fY2ZnICpjZmcpCiB7Ci0JY29uc3Qgc3RydWN0IG1pcGlfY3NpMnBoeV9kZXZp
Y2VfcmVncyAqcmVncyA9IGNzaTJwaHlfZGV2X3RvX3JlZ3MoY3NpMnBoeSk7CiAJc3RydWN0IG1p
cGlfY3NpMnBoeV9sYW5lc19jZmcgKmxhbmVfY2ZnID0gJmNmZy0+bGFuZV9jZmc7Ci0JdTggc2V0
dGxlX2NudDsKLQl1OCB2YWw7CisJdTggbGFuZV9tYXNrOwogCWludCBpOwogCi0JaWYgKGNmZy0+
bGlua19mcmVxIDw9IDApCi0JCXJldHVybiAtRUlOVkFMOwotCi0Jc2V0dGxlX2NudCA9IHBoeV9x
Y29tX21pcGlfY3NpMl9zZXR0bGVfY250X2NhbGMoY2ZnLT5saW5rX2ZyZXEsIGNzaTJwaHktPnRp
bWVyX2Nsa19yYXRlKTsKLQlpZiAoIXNldHRsZV9jbnQpCi0JCXJldHVybiAtRU5PREVWOwotCi0J
LyoKLQkgKiBDU0lfQ09NTU9OX0NUUkw1IGlzIGEgcGh5c2ljYWwgbGFuZSBwb3dlci11cCBiaXRt
YXA6Ci0JICogLSBCaXRzIFswLDIsNCw2XSDihpIgRC1QSFkgZGF0YSBsYW5lcyhMTjAsIExOMiwg
TE40LCBMTjYpCi0JICogLSBCaXRzIFsxLDMsNV0g4oaSIEMtUEhZIHRyaW8gbGFuZXMoTE4xLCBM
TjMsIExONSkKLQkgKiAtIEJpdCBbN10g4oaSIEQtUEhZIGNsb2NrIGxhbmUoTE5DSykgZGVkaWNh
dGVkIGNsb2NrIGVuYWJsZQotCSAqLwotCXZhbCA9IEJJVChsYW5lX2NmZy0+Y2xrLnBvcyk7CisJ
bGFuZV9tYXNrID0gQklUKGxhbmVfY2ZnLT5jbGsucG9zKTsKIAlmb3IgKGkgPSAwOyBpIDwgY2Zn
LT5udW1fZGF0YV9sYW5lczsgaSsrKQotCQl2YWwgfD0gQklUKGxhbmVfY2ZnLT5kYXRhW2ldLnBv
cyAqIDIpOworCQlsYW5lX21hc2sgfD0gQklUKGxhbmVfY2ZnLT5kYXRhW2ldLnBvcyAqIDIpOwog
Ci0Jd3JpdGVsKHZhbCwgY3NpMnBoeS0+YmFzZSArCi0JICAgICAgIENTSVBIWV8zUEhfQ01OX0NT
SV9DT01NT05fQ1RSTG4ocmVncy0+Y29tbW9uX3JlZ3Nfb2Zmc2V0LCA1KSk7CisJcmV0dXJuIGxh
bmVfbWFzazsKK30KKworc3RhdGljIHZvaWQKK3BoeV9xY29tX21pcGlfY3NpMl9kcGh5X2xhbmVf
cG9sYXJpdGllcyhzdHJ1Y3QgbWlwaV9jc2kycGh5X2RldmljZSAqY3NpMnBoeSwKKwkJCQkJc3Ry
dWN0IG1pcGlfY3NpMnBoeV9zdHJlYW1fY2ZnICpjZmcpCit7CisJc3RydWN0IG1pcGlfY3NpMnBo
eV9sYW5lc19jZmcgKmxhbmVfY2ZnID0gJmNmZy0+bGFuZV9jZmc7CisJaW50IGk7CiAKIAkvKiBM
YW5lIGNvbmZpZ3VyYXRpb24gZm9yIHBvbGFyaXR5IEAgQ1NJUEhZLWJhc2UgKyBDVFJMOSAqLwog
CWZvciAoaSA9IDA7IGkgPCBjZmctPm51bV9kYXRhX2xhbmVzOyBpKyspIHsKQEAgLTMwOCw2ICsz
MDYsMjggQEAgc3RhdGljIGludCBwaHlfcWNvbV9taXBpX2NzaTJfbGFuZXNfZW5hYmxlKHN0cnVj
dCBtaXBpX2NzaTJwaHlfZGV2aWNlICpjc2kycGh5LAogCiAJaWYgKGxhbmVfY2ZnLT5jbGsucG9s
KQogCQl3cml0ZWwoQklUKDIpLCBjc2kycGh5LT5iYXNlICsgQ1NJUEhZXzJQSF9MTl9DU0lfMlBI
QVNFX0NUUkw5bihsYW5lX2NmZy0+Y2xrLnBvcykpOworfQorCitzdGF0aWMgaW50IHBoeV9xY29t
X21pcGlfY3NpMl9sYW5lc19lbmFibGUoc3RydWN0IG1pcGlfY3NpMnBoeV9kZXZpY2UgKmNzaTJw
aHksCisJCQkJCSAgIHN0cnVjdCBtaXBpX2NzaTJwaHlfc3RyZWFtX2NmZyAqY2ZnKQoreworCWNv
bnN0IHN0cnVjdCBtaXBpX2NzaTJwaHlfZGV2aWNlX3JlZ3MgKnJlZ3MgPSBjc2kycGh5X2Rldl90
b19yZWdzKGNzaTJwaHkpOworCXU4IHNldHRsZV9jbnQ7CisJdTggdmFsOworCWludCBpOworCisJ
aWYgKGNmZy0+bGlua19mcmVxIDw9IDApCisJCXJldHVybiAtRUlOVkFMOworCisJc2V0dGxlX2Nu
dCA9IHBoeV9xY29tX21pcGlfY3NpMl9zZXR0bGVfY250X2NhbGMoY2ZnLT5saW5rX2ZyZXEsIGNz
aTJwaHktPnRpbWVyX2Nsa19yYXRlKTsKKwlpZiAoIXNldHRsZV9jbnQpCisJCXJldHVybiAtRU5P
REVWOworCisJdmFsID0gcGh5X3Fjb21fbWlwaV9jc2kyX2xhbmVfbWFzayhjc2kycGh5LCBjZmcp
OworCXdyaXRlbCh2YWwsIGNzaTJwaHktPmJhc2UgKworCSAgICAgICBDU0lQSFlfM1BIX0NNTl9D
U0lfQ09NTU9OX0NUUkxuKHJlZ3MtPmNvbW1vbl9yZWdzX29mZnNldCwgNSkpOworCisJcGh5X3Fj
b21fbWlwaV9jc2kyX2RwaHlfbGFuZV9wb2xhcml0aWVzKGNzaTJwaHksIGNmZyk7CiAKIAl2YWwg
PSBDU0lQSFlfM1BIX0NNTl9DU0lfQ09NTU9OX0NUUkw2X0NPTU1PTl9QV1JETl9COwogCXdyaXRl
bCh2YWwsIGNzaTJwaHktPmJhc2UgKwoKLS0gCjIuNTMuMAoKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
