Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB10CDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 01:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXLLFJaH8+SwTtNOed1JN8kC96/PkOQmNNTOWYgNbYE=; b=ekAoFIbDL0/IV6
	Dz0ZXc4iUmh/046PcQnOfeGrb61ko6LhvJsb0K4Aq6ipOrhW20PGk7IZ76ypETtlEboddH/J6+rwI
	3ri2sQfmPUNAt2+hgTcLxbO5k21nIfxqUA5kVOB3FYO/zKJ1O75BdQrM9UAiQhBTj6E9r1EMmfKok
	SY3xgMOVEpz8Cd+WU0o33PAfog5tUWtxt1weDXgr0KZKuy4nS5APZQZ1rIRIjvFaT4ZLul+zQJjav
	3ghSIs13Px0EkVc03I56bRx1+gJB63feAw0HlTUhAaH9B0P1eXjkgWSi6X+JR13JwXUAaFYk9t9jL
	W3rzNw3w34lnotLy6s+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpYM-00000005WVf-2CMp;
	Tue, 23 Jun 2026 01:03:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpYL-00000005WVS-27CM
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 01:03:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C35F24321C;
	Tue, 23 Jun 2026 01:03:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 411431F000E9;
	Tue, 23 Jun 2026 01:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782176628;
	bh=A+OgmDHnBTm+wK8UGNsQDShMG2VzeVtcaGpwe9DDtjk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=c4EKrc1VzsSNzV79yO/X1cy0X/jbRYxxy52N4cOzBp4GG0v7Mhe1hFGmqstO84yBl
	 uF4M4qKFkH6e0CGOouj+3sMTg3/3mxV79MTjp8u0vmdCPIGGyXE/7MpRmi/XYVIaqM
	 ADhsxa1mNDwcuJxShj3Uh9CU0rNaWz1yLC8+tpF3xw0i9ioJYL0SKmwRNXcX4wWGpG
	 u9mcqf19hZh2z0IPKeCQnJ4p79bU+4co+s2K0tIp3tUBjQsKfIDDqFzOVEUfvXe+6E
	 mqaCTAnLn3P86Dg4pbxTV9UVtWyIuQQfvgdzZ0ZI7SxTZeNbSbJtj63DnNt7m5cglJ
	 7rvwr4lheURJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/8] arm64: dts: qcom: sm8450: Add missing PCM_OUT port
To: "Esteban Urrutia via B4 Relay" <devnull+esteuwu.proton.me@kernel.org>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260622-sm8450-qol-v1-4-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-4-37e2ee8df9da@proton.me>
Date: Tue, 23 Jun 2026 01:03:47 +0000
Message-Id: <20260623010348.411431F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gU2lsZW50IGFuZCBs
aWtlbHkgYWNjaWRlbnRhbCBtb2RpZmljYXRpb24gb2YgdGhlIHNhbXBsZSBpbnRlcnZhbCBmb3Ig
dGhlIHNlY29uZCBTb3VuZFdpcmUgcG9ydCBmcm9tIDB4MWYgdG8gMHgzZi4KLS0KCmNvbW1pdCBj
NDIzZmU0OGI4OGNmNzY1ZWZjNTBjY2MyZDY5YmE2ZmFmYTIyNjZhCkF1dGhvcjogRXN0ZWJhbiBV
cnJ1dGlhIDxlc3RldXd1QHByb3Rvbi5tZT4KCmFybTY0OiBkdHM6IHFjb206IHNtODQ1MDogQWRk
IG1pc3NpbmcgUENNX09VVCBwb3J0CgpUaGlzIGNvbW1pdCB1cGRhdGVzIHRoZSBzbTg0NTAgZGV2
aWNlIHRyZWUgdG8gYWRkIGEgbWlzc2luZyBQQ01fT1VUIHBvcnQKdG8gdGhlIHNvdW5kd2lyZSBS
WCBjb250cm9sbGVyLCBpbmNyZW1lbnRpbmcgdGhlIGRvdXQtcG9ydHMgY291bnQgZnJvbSA1CnRv
IDYuIEl0IGFsc28gZXhwYW5kcyB0aGUgY29ycmVzcG9uZGluZyBjb25maWd1cmF0aW9uIGFycmF5
cywgbWlncmF0aW5nIHRoZQpwb3J0cy1zaW50ZXJ2YWwgYXJyYXkgdG8gMTYgYml0cyB0byBhY2Nv
bW1vZGF0ZSB0aGUgbmV3IDB4MThmIHZhbHVlLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL3NtODQ1MC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODQ1
MC5kdHNpCj4gaW5kZXggNWUzMzFhMjVlMjJhMi4uOGZjNThhMDJlNWM1MSAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204NDUwLmR0c2kKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vc204NDUwLmR0c2kKPiBAQCAtMjkxNCwyMCArMjkxNCwyMCBAQCBzd3Ix
OiBzb3VuZHdpcmVAMzIxMDAwMCB7CgpbIC4uLiBdCgo+IC0JCQlxY29tLHBvcnRzLXNpbnRlcnZh
bC1sb3cgPQkvYml0cy8gOCA8MHgwMyAweDFmIDB4MWYgMHgwNyAweDAwPjsKPiAtCQkJcWNvbSxw
b3J0cy1vZmZzZXQxID0JCS9iaXRzLyA4IDwweDAwIDB4MDAgMHgwYiAweDAxIDB4MDA+Owo+IC0J
CQlxY29tLHBvcnRzLW9mZnNldDIgPQkJL2JpdHMvIDggPDB4MDAgMHgwMCAweDBiIDB4MDAgMHgw
MD47Cj4gLQkJCXFjb20scG9ydHMtaHN0YXJ0ID0JCS9iaXRzLyA4IDwweGZmIDB4MDMgMHhmZiAw
eGZmIDB4ZmY+Owo+IC0JCQlxY29tLHBvcnRzLWhzdG9wID0JCS9iaXRzLyA4IDwweGZmIDB4MDYg
MHhmZiAweGZmIDB4ZmY+Owo+IC0JCQlxY29tLHBvcnRzLXdvcmQtbGVuZ3RoID0JL2JpdHMvIDgg
PDB4MDEgMHgwNyAweDA0IDB4ZmYgMHhmZj47Cj4gLQkJCXFjb20scG9ydHMtYmxvY2stcGFjay1t
b2RlID0JL2JpdHMvIDggPDB4ZmYgMHgwMCAweDAxIDB4ZmYgMHhmZj47Cj4gLQkJCXFjb20scG9y
dHMtYmxvY2stZ3JvdXAtY291bnQgPQkvYml0cy8gOCA8MHhmZiAweGZmIDB4ZmYgMHhmZiAweDAw
PjsKPiAtCQkJcWNvbSxwb3J0cy1sYW5lLWNvbnRyb2wgPQkvYml0cy8gOCA8MHgwMSAweDAwIDB4
MDAgMHgwMCAweDAwPjsKPiArCQkJcWNvbSxwb3J0cy1zaW50ZXJ2YWwgPQkJL2JpdHMvIDE2IDww
eDAzIDB4M2YgMHgxZiAweDA3IDB4MDAgMHgxOGY+OwoKW1NldmVyaXR5OiBNZWRpdW1dCldhcyBp
dCBpbnRlbmRlZCB0byBjaGFuZ2UgdGhlIHNhbXBsZSBpbnRlcnZhbCBvZiB0aGUgc2Vjb25kIHBv
cnQgZnJvbSAweDFmIHRvCjB4M2Ygd2hlbiBtaWdyYXRpbmcgdG8gdGhlIDE2LWJpdCBhcnJheSBo
ZXJlIGluIHN3cjE6IHNvdW5kd2lyZUAzMjEwMDAwPwoKQ291bGQgdGhpcyByZWdyZXNzaW9uIGNh
dXNlIGEgY29uZmlndXJhdGlvbiBtaXNtYXRjaCBiZXR3ZWVuIHRoZSBTb3VuZFdpcmUKY29udHJv
bGxlciBhbmQgdGhlIGV4cGVjdGVkIHRyYW5zcG9ydCB3aW5kb3cgb2YgdGhlIGNvZGVjPwoKQW4g
aW5jb3JyZWN0IHNhbXBsZSBpbnRlcnZhbCBtaWdodCBicmVhayBDbGFzcy1IIGVudmVsb3BlIHRy
YWNraW5nIG9yIGNhdXNlClNvdW5kV2lyZSBidXMgZXJyb3JzIG9uIHRoZSBSWCBtYWNybyB3aGVu
IHRoZSBjb250cm9sbGVyIGlzIGluaXRpYWxpemVkIGFuZApuZWdvdGlhdGVzIHBvcnQgcGFyYW1l
dGVycy4KCj4gKwkJCXFjb20scG9ydHMtb2Zmc2V0MSA9CQkvYml0cy8gOCA8MHgwMCAweDAwIDB4
MGIgMHgwMSAweDAwIDB4MDA+Owo+ICsJCQlxY29tLHBvcnRzLW9mZnNldDIgPQkJL2JpdHMvIDgg
PDB4MDAgMHgwMCAweDBiIDB4MDAgMHgwMCAweDAwPjsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjItc204NDUwLXFvbC12MS0w
LTM3ZTJlZThkZjlkYUBwcm90b24ubWU/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
