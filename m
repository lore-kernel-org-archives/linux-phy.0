Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2838606A32A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 11:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T8FLRCAN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ncrqWbEt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+6iCBg0BniEQDOWgHb/RRbo97HXPfX+m/SiLP3ATJBE=; b=T8FLRCAN2Yb9yiVFnZ4EHoVR0x
	CeDIMnWnS3HFzAA16q1LetHQY5rDuSwd+ay8pL23RI9gUfvMpl7c/WWlOGxR+6YuPnxP1anwkfn3h
	Exmgb6fpHww5mNg9Acazl4HPNgTvU6Ecs31zPR5yncEeG+5Vi/KauMMG3Q4GYzM1rh31P33Zy2ktb
	vvsIwkcpphVkC6kNyoRKySMSyEUYUfWZX+u23C92IkCgoKbavl7LcLWLTE16srqkmR58kM0fe2shj
	438gd3d9CGxtHDfWptxsvdpv5Ko1+Ej49DqItAYX4GyZZCtcyF3TqNqv8adCNU9U35TzCjbfWki1j
	wU8nLx2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1vS-00000006rqW-2ES2;
	Wed, 28 Oct 2026 11:34:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1vR-00000006rqI-2sbL
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 11:34:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9E90F60136;
	Wed, 28 Oct 2026 11:34:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA8171F01825;
	Wed, 28 Oct 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793187276;
	bh=Dm2204N5q4pUPSLYAJkabKLi2pj0kqDbpxLVbB0EmvY=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=ncrqWbEteNkw0tdcqQJOmlYeN4rLNB/aR3RqVXNPszzMrAsYqA4iMxuffdi2o5sSG
	 BrbEhi3fDg6jMtb1HRRdt8nnbkVr1tJ3epwMA1a57QuqNYL3SMYR67fT6trC+bBOuv
	 p5WP2Jh6TUBKIL/15kptjV+FB8/1TLusBTDPyxBfA/JVvuhdLgQZ3fLWr5E96XZNdr
	 httJhs9evRd5CrylnckTJ6eIOCuFpcakik1peGJRcmcIjGl9Ywd4zOGUBBCkOpD8AR
	 vWrYHVyUb77X5eMdwl0O/J/jXaD/X0MCCbn5E/LuURcK4AxsiVcz6owhYopJvrMHM5
	 95LazxELTTByg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: marvell: a3700-comphy: Guard missing polarity
 argument
From: Manivannan Sadhasivam <mani@kernel.org>
To: =?utf-8?q?=C5=A0t=C4=9Bp=C3=A1n_Daleck=C3=BD?= <daleckystepan@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261001151939.23658-1-daleckystepan@gmail.com>
References: <20261001151939.23658-1-daleckystepan@gmail.com>
Date: Wed, 28 Oct 2026 17:04:29 +0530
Message-Id: <179318726992.5872.8966112619057702864.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1495; i=mani@kernel.org;
 h=from:subject:message-id; bh=fR2hoJz11vogsarSjJMB47094/svk4kkI+B5BqmBXeI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq4d3IfjcamPUAIxgUX26jrukCB2rCPDjl/4WDp
 BL5kxdCIACJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauHdyAAKCRBVnxHm/pHO
 9X0YB/4t5U7JQ00GkNTsEc4oTiFzpHouhrDd1D6Tjf8G7s8kD7w1G5xn5fNXGZ4l3B1zlnYIsv5
 JB9RVmvXA6MHEqysE27yXwU/wALJG+3UUSgH5dS4LmkyGzqBcWKZIG4gH2s4HnKuOIrP9IwN2U2
 fb6LqKaPXpNg08mC0i7EGU5L+/V8dPPNYhm6lBlDQZQFML2z9mpkb1lNy/tFKdmv5TfGI7kdHBy
 ceHEOk0qn8foJ+oObdRADLYfn7SHAXpHkaa6XJQBhx+Uj/dT8ZGXFNY7bG4gTQb1L1DzJZ9nKk+
 LRDcu+WFlXj+6612XfBLqQuVLCOh100GCggOjyoUWcmK/WgW
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjAyNi0xMC0wMSAxNzoxOSArMDIwMCwgxaB0xJtww6FuIERhbGVja8O9IHdyb3RlOgo+IFRo
ZSBBcm1hZGEgMzcwMCBDT01QSFkgYmluZGluZyBzcGVjaWZpZXMgI3BoeS1jZWxscyA9IDwxPiwg
c28gUEhZCj4gcmVmZXJlbmNlcyBzdXBwbHkgb25seSB0aGUgcG9ydCBhcmd1bWVudC4gSG93ZXZl
ciwKPiBtdmVidV9hMzcwMF9jb21waHlfeGxhdGUoKSB1bmNvbmRpdGlvbmFsbHkgcmVhZHMgYXJn
c1sxXSB0byBzZWxlY3QgVFgKPiBhbmQgUlggcG9sYXJpdHkgaW52ZXJzaW9uLiBUaGUgUEhZIGNv
cmUgZG9lcyBub3QgaW5pdGlhbGl6ZSBpdHMKPiBvZl9waGFuZGxlX2FyZ3Mgc3RydWN0dXJlLCBh
bmQgdGhlIHBoYW5kbGUgcGFyc2VyIGZpbGxzIG9ubHkgdGhlCj4gc3VwcGxpZWQgY2VsbHMsIGxl
YXZpbmcgYXJnc1sxXSB1bmluaXRpYWxpemVkLgo+IAo+IFVzaW5nIHRoZSB1bnVzZWQgY2VsbCBj
YW4gcHJvZ3JhbSB1bmludGVuZGVkIFNlckRlcyBwb2xhcml0eS4gT24gYQo+IFR1cnJpcyBNT1gg
d2l0aCBhIFBlcmlkb3Qgc3dpdGNoIHJ1bm5pbmcgT3BlbldydCB3aXRoIExpbnV4IDYuMTguNTQs
Cj4gdGhlIENQVSBsaW5rIHJlcG9ydHMgUlggQ1JDIGVycm9ycyBhbmQgZmFpbHMgdG8gcGFzcyB0
cmFmZmljLiBUaGUKPiBzd2l0Y2ggUENTIGRvZXMgbm90IHJlY29yZCBhIHBhcnRuZXIgYWR2ZXJ0
aXNlbWVudCBkZXNwaXRlIGxpbmstdXAuCj4gCj4gQ2hlY2sgYXJnc19jb3VudCBiZWZvcmUgcmVh
ZGluZyBhcmdzWzFdLCBsZWF2aW5nIHBvbGFyaXR5IGludmVyc2lvbgo+IGRpc2FibGVkIHdoZW4g
dGhlIHNlY29uZCBhcmd1bWVudCB3YXMgbm90IHN1cHBsaWVkLiBUaGlzIGRvZXMgbm90Cj4gY2hh
bmdlIHRoZSBiaW5kaW5nIG9yIGludHJvZHVjZSBhIHN1cHBvcnRlZCB0d28tY2VsbCBpbnRlcmZh
Y2UuCj4gCj4gVGhlIHNhbWUgY2hhbmdlIHJlc3RvcmVzIDI1MDBCQVNFLVggY29tbXVuaWNhdGlv
biBvbiB0aGUgYWZmZWN0ZWQKPiBNT1ggd2l0aCBubyBDUkMgZXJyb3JzLiBDb2xkIGJvb3RzLCBy
ZWJvb3RzIGFuZCBpbnRlcmZhY2UgZG93bi91cAo+IGN5Y2xlcyB3ZXJlIGFsc28gdGVzdGVkIHN1
Y2Nlc3NmdWxseSBvbiBMaW51eCA2LjE4LjU0Lgo+IAo+IEZpeGVzOiA5MzQzMzcwODBjNmMgKCJw
aHk6IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IEFkZCBuYXRpdmUga2VybmVsIGlt
cGxlbWVudGF0aW9uIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IENsb3NlczogaHR0
cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9pc3N1ZXMvMjQwNjkKPiBBc3Npc3RlZC1i
eTogTExNCj4gU2lnbmVkLW9mZi1ieTogxaB0xJtww6FuIERhbGVja8O9IDxkYWxlY2t5c3RlcGFu
QGdtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5u
YW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
