Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7BAC55162
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 11:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0pFhO/e+THWgobtyRPSizaMu/CK7S81WrVH4+L0RXA=; b=T2Ou26hyYV1ATg
	ffNT96NVFc+isX7Yh9tUouWnX79qqJ2oSGy710nErdg3HIQQhU1s4D59Z9CeJ9FNkYwJCiXoNjcFy
	UQAWp9lAomnjdUb69otDRpTu7AnmHcUBlQEDgm1onHZFNJC/wWda8/deHuUl+TouX2lUs5p5IV4Ey
	hRGG8DcnvgYPQAcAOWUqsPCVPsW001l2YC7hB51NJy0An5bDk1DlSJsFWIyjCwbwAxyYvchQzaD5G
	F9kAFGxUe//ckqR7C2i+1ORMaObAtNy8zyPFOAZ3xeOaFcRsT2e4hSbQInIllIK1Vx6zTQiSzLdqQ
	uhHZ2aJisQY2esj59bOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpOhe-0000000AJbw-2JuE;
	Thu, 30 Jul 2026 11:13:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpOhc-0000000AJbo-2pJ7
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 11:13:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D62CE60A66;
	Thu, 30 Jul 2026 11:13:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2D051F00A3A;
	Thu, 30 Jul 2026 11:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785410007;
	bh=aPOvsIc3guHZFzSxfhOwyQI1XWMCxa87Cbpi6kj7XmM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BwcJc3lZpkKPGfehX0CFhcOgvguoxoFTa16dBhoxoL7Dl2P7lQHefdj8uoVVWH5Fy
	 wFkpADZi2g6tKBEHZXuH+iCHwWua134rdzsvQ+8PVQffhaRHg5AfjEpMeBv/IJfObf
	 QyQrMfUrfzbqEQjsi5/3VxC0XXef9ELjP/wiDORxcc79kbPg65p9bBOod9IVLK4r6p
	 R1up+B1rHkEmcOXEF1BboxmImzVE6BaIhJa9q93RgiGovtHnZKPIobM6JH1U2H/ux/
	 kAAp34jvwYTymCQSGayluVGeRZu0Ss+7htBPd/5xvGEDVPv2xY4ohN7cZXmP5fNNg+
	 dxVYKFpaG+6ZQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 24/26] arm64: dts: mediatek: mt8195: Align ufshci
 node to dt-bindings changes
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-scsi@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260730-mt8196-ufs-v10-24-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-24-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 11:13:26 +0000
Message-Id: <20260730111326.E2D051F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFJlbW92aW5nIHRoZSBg
ZnJlcS10YWJsZS1oemAgcHJvcGVydHkgd2l0aG91dCBhZGRpbmcgYW4gYG9wZXJhdGluZy1wb2lu
dHMtdjJgIHRhYmxlIGNhdXNlcyB0aGUgVUZTIGNvcmUgcGxhdGZvcm0gZHJpdmVyIHRvIHNraXAg
cGFyc2luZyBhbmQgZW5hYmxpbmcgYWxsIGhhcmR3YXJlIGNsb2NrcywgcmVzdWx0aW5nIGluIGEg
Y29udHJvbGxlciBpbml0aWFsaXphdGlvbiBmYWlsdXJlLgotLQoKLS0tIFBhdGNoIFsyNF06IFtQ
QVRDSCB2MTAgMjQvMjZdIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBtdDgxOTU6IEFsaWduIHVmc2hj
aSBub2RlIHRvIGR0LWJpbmRpbmdzIGNoYW5nZXMgLS0tCmNvbW1pdCBlYWMzZWQ2ZTY3OTFjNTM0
MjRlNGUwMjVlNGRmZDQ3YjY4MzA5ZWI3CkF1dGhvcjogTG91aXMtQWxleGlzIEV5cmF1ZCA8bG91
aXNhbGV4aXMuZXlyYXVkQGNvbGxhYm9yYS5jb20+Cgphcm02NDogZHRzOiBtZWRpYXRlazogbXQ4
MTk1OiBBbGlnbiB1ZnNoY2kgbm9kZSB0byBkdC1iaW5kaW5ncyBjaGFuZ2VzCgpUaGlzIGNvbW1p
dCB1cGRhdGVzIHRoZSBNVDgxOTUgVUZTIGhvc3QgY29udHJvbGxlciBkdCBiaW5kaW5ncyBieSBh
ZGRpbmcKbmV3IHJlcXVpcmVkIGNsb2NrcyBhbmQgcmVtb3ZpbmcgdGhlIGRlcHJlY2F0ZWQgZnJl
cS10YWJsZS1oeiBwcm9wZXJ0eS4KSXQgc3RhdGVzIHRoYXQgY29udmVydGluZyB0byBhbiBPUFAg
dGFibGUgaXMgbm90IG5lZWRlZCBzaW5jZSB0aGUgdmFsdWVzCndlcmUgYWxsIHplcm8uCgo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE5NS5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxOTUuZHRzaQo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTk1LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L21lZGlhdGVrL210ODE5NS5kdHNpClsgLi4uIF0KPiBAQCAtMTQ4MSwxNSArMTQ4MCwxNSBAQCB1
ZnNoY2k6IHVmc2hjaUAxMTI3MDAwMCB7Cj4gIAkJCQkgPCZpbmZyYWNmZ19hbyBDTEtfSU5GUkFf
QU9fVU5JUFJPX1RJQ0s+LAo+ICAJCQkJIDwmaW5mcmFjZmdfYW8gQ0xLX0lORlJBX0FPX1VGU19N
UF9TQVBfQj4sCj4gIAkJCQkgPCZpbmZyYWNmZ19hbyBDTEtfSU5GUkFfQU9fVUZTX1RYX1NZTUJP
TD4sCj4gLQkJCQkgPCZpbmZyYWNmZ19hbyBDTEtfSU5GUkFfQU9fUEVSSV9VRlNfTUVNX1NVQj47
Cj4gLQkJCWNsb2NrLW5hbWVzID0gInVmcyIsICJ1ZnNfYWVzIiwgInVmc190aWNrIiwKPiAtCQkJ
CQkidW5pcHJvX3N5c2NsayIsICJ1bmlwcm9fdGljayIsCj4gLQkJCQkJInVuaXByb19tcF9iY2xr
IiwgInVmc190eF9zeW1ib2wiLAo+IC0JCQkJCSJ1ZnNfbWVtX3N1YiI7Cj4gLQkJCWZyZXEtdGFi
bGUtaHogPSA8MCAwPiwgPDAgMD4sIDwwIDA+LAo+IC0JCQkJCTwwIDA+LCA8MCAwPiwgPDAgMD4s
Cj4gLQkJCQkJPDAgMD4sIDwwIDA+Owo+IC0KCltTZXZlcml0eTogSGlnaF0KRG9lcyByZW1vdmlu
ZyB0aGlzIHByb3BlcnR5IGludHJvZHVjZSBhIHJlZ3Jlc3Npb24gaW4gdGhlIFVGUyBjb250cm9s
bGVyCmluaXRpYWxpemF0aW9uPwoKTG9va2luZyBhdCB1ZnNoY2RfcGFyc2VfY2xvY2tfaW5mbygp
IGluIGRyaXZlcnMvdWZzL2hvc3QvdWZzaGNkLXBsdGZybS5jLAp0aGUgZHJpdmVyIHNraXBzIHBh
cnNpbmcgdGhlIGNsb2NrIHByb3BlcnRpZXMgZW50aXJlbHkgaWYgZnJlcS10YWJsZS1oeiBpcwpt
aXNzaW5nOgoKZHJpdmVycy91ZnMvaG9zdC91ZnNoY2QtcGx0ZnJtLmM6dWZzaGNkX3BhcnNlX2Ns
b2NrX2luZm8oKSB7CiAgICAuLi4KCXN6ID0gb2ZfcHJvcGVydHlfY291bnRfdTMyX2VsZW1zKG5w
LCAiZnJlcS10YWJsZS1oeiIpOwoJaWYgKHN6IDw9IDApIHsKCQlkZXZfaW5mbyhkZXYsICJmcmVx
LXRhYmxlLWh6IHByb3BlcnR5IG5vdCBzcGVjaWZpZWRcbiIpOwoJCWdvdG8gb3V0OwoJfQogICAg
Li4uCn0KClNpbmNlIGFuIG9wZXJhdGluZy1wb2ludHMtdjIgbm9kZSBpcyBhbHNvIGFic2VudCwg
dGhlIGFsdGVybmF0aXZlIHBhcnNlcgp1ZnNoY2RfcGFyc2Vfb3BlcmF0aW5nX3BvaW50cygpIHdp
bGwgYWxzbyByZXR1cm4gZWFybHkuIFRoaXMgbGVhdmVzCmhiYS0+Y2xrX2xpc3RfaGVhZCBlbXB0
eS4KCklmIHRoZSBsaXN0IGlzIGVtcHR5LCB1ZnNoY2RfaW5pdF9jbG9ja3MoKSBhbmQgdWZzaGNk
X3NldHVwX2Nsb2NrcygpCndpbGwgc2lsZW50bHkgcmV0dXJuIHdpdGhvdXQgdHVybmluZyBvbiBh
bnkgaGFyZHdhcmUgY2xvY2tzLiAKCkNvdWxkIHRoaXMgY2F1c2UgYSBwcm9iZSBmYWlsdXJlIG9y
IGEgc3lzdGVtIGNyYXNoIChTRXJyb3IpIHdoZW4gdGhlIGRyaXZlcgpsYXRlciBhdHRlbXB0cyB0
byBhY2Nlc3MgdW5jbG9ja2VkIFVGUyBNTUlPIHJlZ2lzdGVycz8KCj4gKwkJCQkgPCZpbmZyYWNm
Z19hbyBDTEtfSU5GUkFfQU9fUEVSSV9VRlNfTUVNX1NVQj4sCj4gKwkJCQkgPCZ0b3Bja2dlbiBD
TEtfVE9QX1VGU19SWF9TWU1CT0w+LAo+ICsJCQkJIDwmdG9wY2tnZW4gQ0xLX1RPUF9VRlNfUlhf
U1lNQk9MMT47Cj4gKwkJCWNsb2NrLW5hbWVzID0gIm1haW4iLCAiYWVzIiwgInRpY2siLCAidW5p
cHJvX3N5c2NsayIsCj4gKwkJCQkgICAgICAidW5pcHJvX3RpY2siLCAidW5pcHJvX21wX2JjbGsi
LAo+ICsJCQkJICAgICAgInR4X3N5bWJvbCIsICJtZW1fc3ViIiwgInJ4X3N5bWJvbDAiLAo+ICsJ
CQkJICAgICAgInJ4X3N5bWJvbDEiOwo+ICsJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTM3IElS
UV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gKwkJCXBoeXMgPSA8JnVmc3BoeT47Cj4gIAkJCW1lZGlh
dGVrLHVmcy1kaXNhYmxlLW1jcTsKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9OwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDczMC1tdDgxOTYtdWZzLXYxMC0wLWJjNWVjZWYyMDJkY0Bjb2xsYWJvcmEuY29tP3BhcnQ9
MjQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
