Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC5B3CD8CA8
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 17:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FpJOtUjSNuFPsAvw2EuTUtlccnm9+lCeto49GLmMEc=; b=dT4pnsooaQxBTH
	moMp/+T3vwVlcHEnd9z3CVF2DlkD1bcjPfcddQLC9utTyOnD59knnZs2sItLBrDl/ePeCwqSSHnuz
	JwZnSPy7pfWIjAFMS1t+/E18BiXcUk/YhkDvAoMhlgVarTXdXdgyPzZb21VtfubKYkCAo9P2L2hbK
	2JSZIDXtW+b3DMXBBTohmIDzKRLowpFNhgau9YvkjbXF1oMf5MN9iH7f/3d2qwkxhdNqnz8iSJ1Q5
	tjOP8VZ7aKBfYft2q6RofbmeHEgNFOeiJ0qtvGIk1EinBuEEtcu4Svma2oceCRn+oIZToW2NaGnJK
	g4zGB1CjfvAeh4pS/7FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5o4-0000000BM9L-26hO;
	Fri, 12 Jun 2026 17:36:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5o2-0000000BM9E-3YGk
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 17:36:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 53E174079E;
	Fri, 12 Jun 2026 17:36:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5A5E1F000E9;
	Fri, 12 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781285794;
	bh=q+QKyffejTA0Siagoa2psHa78z7Xv2JYlb2GSFKS7lk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eD0cbThOMxhPRQgy1d99+sh2PK4obr+UhJ9axf0IY3MvZkld6Jj3k717N3kOMUod3
	 0j7ndw/RbB3hUdzHkY0Mkk2zfsAKDpSpeXJdNe8Tllepi0FPz2yJ/LwfvKG3ZMC93g
	 P8S+vC7zk7KscpPXv0QR6heMrfXdlG2PHp590JTInZ8BgWI/JOFwTdCkxHQL7hKtxA
	 P0qqqgu+76F+WDKFor3dRIgwiJ5RBTDsdHtUgwpDbuITOLNKhtHrqi9hCEtli8v1t4
	 t8Th7VfnEiWYNwjFhBd7d1C6RibgIcGLFlwFl4acpydjUZaZiEU/wDw6Ie5QoVVJ7b
	 AsUuvXDaoGRZA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: Add Shikra EVK boards
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260612-shikra-dt-v6-5-6b6cb58db477@oss.qualcomm.com>
References: <20260612-shikra-dt-v6-5-6b6cb58db477@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 17:36:33 +0000
Message-Id: <20260612173633.D5A5E1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gYHNoaWtyYS1jcXMt
ZXZrLmR0c2AgaW5jb3JyZWN0bHkgaW5jbHVkZXMgYHNoaWtyYS1jcW0tc29tLmR0c2lgIGluc3Rl
YWQgb2YgYSBDUVMtc3BlY2lmaWMgU29NIGZpbGUuCi0tCgpjb21taXQgMGM0ZjZkMDdkZDNiMzJk
YTUzMjMxYTVkY2YzZGUwMzZiYjU4Zjc2ZgpBdXRob3I6IEtvbWFsIEJhamFqIDxrb21hbC5iYWph
akBvc3MucXVhbGNvbW0uY29tPgoKYXJtNjQ6IGR0czogcWNvbTogQWRkIFNoaWtyYSBFVksgYm9h
cmRzCgpUaGlzIGNvbW1pdCBhZGRzIGRldmljZSB0cmVlcyBmb3IgdGhlIFNoaWtyYSBFVksgcGxh
dGZvcm0sIGludHJvZHVjaW5nCnRocmVlIGJvYXJkIHZhcmlhbnRzIHBhaXJlZCB3aXRoIGEgY29t
bW9uIGNhcnJpZXIgYm9hcmQuIEl0IGluY2x1ZGVzCmNvbmZpZ3VyYXRpb25zIGZvciByZXRhaWwg
YW5kIGluZHVzdHJpYWwgU29NcywgYm90aCB3aXRoIGFuZCB3aXRob3V0Cm1vZGVtcy4KClsgLi4u
IF0KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3FzLWV2
ay5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNxcy1ldmsuZHRzCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5iM2YxOWE2NGQ3YWVkCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3Fz
LWV2ay5kdHMKPiBAQCAtMCwwICsxLDQwIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBCU0QtMy1DbGF1c2UKPiArLyoKPiArICogQ29weXJpZ2h0IChjKSBRdWFsY29tbSBUZWNobm9s
b2dpZXMsIEluYy4gYW5kL29yIGl0cyBzdWJzaWRpYXJpZXMuCj4gKyAqLwo+ICsKPiArL2R0cy12
MS87Cj4gKwo+ICsjaW5jbHVkZSAic2hpa3JhLWNxbS1zb20uZHRzaSIKCltTZXZlcml0eTogTWVk
aXVtXQpJcyB0aGlzIHRoZSBpbnRlbmRlZCBpbmNsdWRlIGZvciB0aGUgQ1FTIGJvYXJkPwoKVGhl
IGNvbW1pdCBtZXNzYWdlIGluZGljYXRlcyB0aGUgQ1FTIGJvYXJkIHBhaXJzIHdpdGggdGhlIENR
MjM5MFMgU29NIAood2l0aG91dCBtb2RlbSksIGJ1dCB0aGlzIGluY2x1ZGVzIHRoZSBDUU0gKHdp
dGggbW9kZW0pIFNvTSBkZWZpbml0aW9uLgoKSWYgbW9kZW0tc3BlY2lmaWMgbm9kZXMgYXJlIGxh
dGVyIGFkZGVkIHRvIHNoaWtyYS1jcW0tc29tLmR0c2ksIHdvdWxkbid0CnRoZXkgaW5hZHZlcnRl
bnRseSBiZSBhcHBsaWVkIHRvIHRoaXMgbW9kZW0tbGVzcyBDUVMgdmFyaWFudD8KCj4gKyNpbmNs
dWRlICJzaGlrcmEtZXZrLmR0c2kiCj4gKwo+ICsvIHsKPiArCW1vZGVsID0gIlF1YWxjb21tIFRl
Y2hub2xvZ2llcywgSW5jLiBTaGlrcmEgQ1FTIEVWSyI7Cj4gKwljb21wYXRpYmxlID0gInFjb20s
c2hpa3JhLWNxcy1ldmsiLCAicWNvbSxzaGlrcmEtY3FzLXNvbSIsICJxY29tLHNoaWtyYSI7Cgpb
IC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwNjEyLXNoaWtyYS1kdC12Ni0wLTZiNmNiNThkYjQ3N0Bvc3MucXVhbGNvbW0u
Y29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
