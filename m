Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB703C7115B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 21:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDixyutPsTteeF1g6A6zc07aZ/mJVb5jdpBvGg8s6wc=; b=uVH4jyGlUnVrqb
	TXaC9thUcFp1j+Mh6DSmoBkQ9XbciK+S5RNJXjO1RVtHEMpErtaQd3iWuwJRcpzhkbgVfq4ppqaYL
	HnhLIkzbn/CtNENf9yw5qOlJJ9dSSFyx2WXgy7xLTX6cBcyilObzUZXznRFLAogoQvOwY7GXkOrl+
	ljbsJHc3y+EKCwWu9Wfzy3pKtCn4FqbESqRt9huCyKzgegFQn6R2xozihQlfwpiaPbT0Ms/9pEQQu
	pFEv1Jk/2cPzKNo9iWZiW3V4qgFAO3IMNH2ink0erwjRapUUOB5NpzTfUZg1MuPpx48f+Ddtdsuqs
	MqRV2F14ezU9IPDqxqeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSjlE-0000000Gfae-1iEL;
	Fri, 20 Jun 2025 21:59:00 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSjWw-0000000Gdo0-15la
	for linux-phy@lists.infradead.org;
	Fri, 20 Jun 2025 21:44:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB1C9169C;
	Fri, 20 Jun 2025 14:43:53 -0700 (PDT)
Received: from usa.arm.com (unknown [10.57.48.228])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C71483F673;
	Fri, 20 Jun 2025 14:44:09 -0700 (PDT)
From: Aishwarya <aishwarya.tcv@arm.com>
To: quic_nitirawa@quicinc.com
Cc: James.Bottomley@HansenPartnership.com,
	aishwarya.tcv@arm.com,
	andersson@kernel.org,
	bvanassche@acm.org,
	dmitry.baryshkov@oss.qualcomm.com,
	kishon@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	manivannan.sadhasivam@linaro.org,
	martin.petersen@oracle.com,
	neil.armstrong@linaro.org,
	quic_cang@quicinc.com,
	quic_rdwivedi@quicinc.com,
	vkoul@kernel.org,
	broonie@kernel.org
Subject: Re: [PATCH V6 10/10] scsi: ufs: qcom : Refactor phy_power_on/off calls
Date: Fri, 20 Jun 2025 22:44:08 +0100
Message-Id: <20250620214408.11028-1-aishwarya.tcv@arm.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <9c846734-9267-442d-bba0-578d993650c1@quicinc.com>
References: <9c846734-9267-442d-bba0-578d993650c1@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_144414_341965_3A83A9FF 
X-CRM114-Status: UNSURE (   3.72  )
X-CRM114-Notice: Please train this message.
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

SGkgTml0aW4sCgpUbyBjbGFyaWZ5IOKAlCB0aGUgZGVmY29uZmlnIGtlcm5lbCBkb2VzIGJvb3Qg
c3VjY2Vzc2Z1bGx5IG9uIG91ciBBcm02NApRdWFsY29tbSBwbGF0Zm9ybXMgKFJCNSBhbmQgREI4
NDVDKS4gSG93ZXZlciwgc3RhcnRpbmcgZnJvbQpuZXh0LTIwMjUwNjEzLCB3ZSBhcmUgc2VlaW5n
IHRoZSBmb2xsb3dpbmcgdGhyZWUgdGVzdCBmYWlsdXJlcyBpbiB0aGUKYGJvb3RycmAgYmFzZWxp
bmUgdGVzdCBpbiBvdXIgQ0kgZW52aXJvbm1lbnQ6CgogIC0gYmFzZWxpbmUuYm9vdHJyLnNjc2kt
ZGlzay1kZXZpY2UwLXByb2JlZAogIC0gZG1lc2cuYWxlcnQKICAtIGRtZXNnLmVtZXJnCgpUZXN0
IHN1aXRlOgogIGh0dHBzOi8vZ2l0aHViLmNvbS9rZXJuZWxjaS9ib290cnIvdHJlZS9tYWluCgpU
aGVzZSBmYWlsdXJlcyBhcmUgZHVlIHRvIGtlcm5lbCBhbGVydHMgc2VlbiBpbiB0aGUgYm9vdCBs
b2dzLiBBIHJlbGV2YW50CnNuaXBwZXQgaXMgc2hvd24gYmVsb3c6CgogIGtlcm4gIDphbGVydCA6
IFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBhdAogIHZp
cnR1YWwgYWRkcmVzcyAwMDAwMDAwMDAwMDAwMDAwCiAga2VybiAgOmFsZXJ0IDogTWVtIGFib3J0
IGluZm86CiAga2VybiAgOmFsZXJ0IDogICBFU1IgPSAweDAwMDAwMDAwOTYwMDAwMDQKICBrZXJu
ICA6YWxlcnQgOiAgIEVDID0gMHgyNTogREFCVCAoY3VycmVudCBFTCksIElMID0gMzIgYml0cwog
IGtlcm4gIDphbGVydCA6ICAgU0VUID0gMCwgRm5WID0gMAogIGtlcm4gIDphbGVydCA6ICAgRUEg
PSAwLCBTMVBUVyA9IDAKICBrZXJuICA6YWxlcnQgOiAgIEZTQyA9IDB4MDQ6IGxldmVsIDAgdHJh
bnNsYXRpb24gZmF1bHQKICBrZXJuICA6YWxlcnQgOiBEYXRhIGFib3J0IGluZm86CiAga2VybiAg
OmFsZXJ0IDogICBJU1YgPSAwLCBJU1MgPSAweDAwMDAwMDA0LCBJU1MyID0gMHgwMDAwMDAwMAog
IGtlcm4gIDphbGVydCA6ICAgQ00gPSAwLCBXblIgPSAwLCBUbkQgPSAwLCBUYWdBY2Nlc3MgPSAw
CiAga2VybiAgOmFsZXJ0IDogICBHQ1MgPSAwLCBPdmVybGF5ID0gMCwgRGlydHlCaXQgPSAwLCBY
cyA9IDAKICBrZXJuICA6YWxlcnQgOiB1c2VyIHBndGFibGU6IDRrIHBhZ2VzLCA0OC1iaXQgVkFz
LCBwZ2RwPTAwMDAwMDAxMDljNDEwMDAKICBrZXJuICA6YWxlcnQgOiBbMDAwMDAwMDAwMDAwMDAw
MF0gcGdkPTAwMDAwMDAwMDAwMDAwMDAKICA8TEFWQV9TSUdOQUxfVEVTVENBU0UgVEVTVF9DQVNF
X0lEPWFsZXJ0IFJFU1VMVD1mYWlsIFVOSVRTPWxpbmVzCiAgTUVBU1VSRU1FTlQ9MTM+CgogIGtl
cm4gIDplbWVyZyA6IEludGVybmFsIGVycm9yOiBPb3BzOiAwMDAwMDAwMDk2MDAwMDA0IFsjMV0g
U01QCiAga2VybiAgOmVtZXJnIDogQ29kZTogYTkwMTU3ZjMgYWEwMDAzZjMgZjkwMDEzZjYgZjk0
MDVjMTUgKGY5NDAwMmI2KQogIDxMQVZBX1NJR05BTF9URVNUQ0FTRSBURVNUX0NBU0VfSUQ9ZW1l
cmcgUkVTVUxUPWZhaWwgVU5JVFM9bGluZXMKICBNRUFTVVJFTUVOVD0yPgoKUGxlYXNlIGxldCBt
ZSBrbm93IGlmIHlvdSBuZWVkIGZ1bGwgbG9ncyBvciBmdXJ0aGVyIGRldGFpbHMgdG8gaGVscAp3
aXRoIGRlYnVnZ2luZy4KClRoYW5rcywKQWlzaHdhcnlhCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
