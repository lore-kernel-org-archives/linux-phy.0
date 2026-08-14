Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C9EFC5B572
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 07:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPHsNKAH3rw8LXyw7W/hGtQsTi6dFcF/FRUXCSUVE+I=; b=DAGnx2wzm0EAFx
	nG0oJLBIvWn1ZD+qdgZYHgZKPjFtZJKz71DqQYaFYi8MuP3Al/AzEfrAr1a5ldjT5mkdTmURw8iCT
	G2n5ShzinTlfS3H4oqix8H7oTP/V66n8WraGe4AEVWmiw7PXC6FpR+AcZwyOCSnT4AAECP2B1lg6M
	6ExGhbQs2xXnXGH2Ws2CTQGdYyzCjp8JyMJIGFiPUR+DS/7wI1/sfmtbbwwoux/HNQOuv7HHG8bvv
	+wPGKLcwrD7Tc4T6bAeBJAzanjUn2TxLP88Ae7CIcQaUYPxZAgFC9ZSRZ97FV8rVnL4hpkRH7j8WM
	71BuKz5OiaztylNAGL8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wum2a-000000025eh-3dle;
	Fri, 14 Aug 2026 07:09:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wum2Z-000000025eI-0Jn1
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 07:09:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3D4DD600AD;
	Fri, 14 Aug 2026 07:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78CD81F000E9;
	Fri, 14 Aug 2026 07:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786691358;
	bh=npxA05NKwFND8TectVqu8PFbsQYarhozBa6ZOm/34eU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RHPmUUQZkWHBjw5G0DPmftcdF/Oft69MIot70L4Gwtkmkx+2uYcusi+3uDnSnpZ2r
	 luMDbgL1s1Vg2yzVOqPFrAJfuZ8KvOUybbt0VZb7O8ztFgpAuPN3Ayd00iOMndHMvl
	 9FWoxOhFaw5C2+FBbSd1M0LDsiEqcD7ZP0xzlxnjuu3s2ACxJNUFHKfqF79SQqX8fa
	 IXm5VHLVIkc4rGKfMp10KiqjOib84yJbws7LNsbAjjLhcYFRQ56JJGBoO0mnOkibEK
	 9Dkm5HaDGsidhrFU5I7o/MvZlEs6ycdkyQnA6QqfUeK2jxz3rOGsrOmJXIEdeEBUsD
	 Jp1IUGEjy02Iw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP
 UFS PHY compatible for Maili
To: "Nitin Rawat" <nitin.rawat@oss.qualcomm.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260814070112.1676300-1-nitin.rawat@oss.qualcomm.com>
References: <20260814070112.1676300-1-nitin.rawat@oss.qualcomm.com>
Date: Fri, 14 Aug 2026 07:09:11 +0000
Message-Id: <20260814070917.78CD81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSW5jb21wbGV0ZSBC
aW5kaW5nIFNjaGVtYTogVGhlIG5ld2x5IGFkZGVkIGNvbXBhdGlibGUgc3RyaW5nIGBxY29tLG1h
aWxpLXFtcC11ZnMtcGh5YCBhbmQgaXRzIGZhbGxiYWNrIGBxY29tLGhhd2ktcW1wLXVmcy1waHlg
IGFyZSBvbWl0dGVkIGZyb20gdGhlIGBhbGxPZmAgY29uZGl0aW9uYWwgYmxvY2tzLCBhbmQgdGhl
IGZhbGxiYWNrIHN0cmluZyBpcyBub3QgZGVmaW5lZCBhcyBhIHN0YW5kYWxvbmUgY29tcGF0aWJs
ZS4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSCBWMl0gZHQtYmluZGluZ3M6IHBoeTogcWNvbSxz
YzgyODB4cC1xbXAtdWZzLXBoeTogQWRkIFFNUCBVRlMgUEhZIGNvbXBhdGlibGUgZm9yIE1haWxp
IC0tLQpjb21taXQgODU3MzZmZDM5MWFmYjVlYmYzODEzOGUyZDVjM2EzNjYwOWQ2YzJjOApBdXRo
b3I6IE5pdGluIFJhd2F0IDxuaXRpbi5yYXdhdEBvc3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGlu
Z3M6IHBoeTogcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeTogQWRkIFFNUCBVRlMgUEhZIGNvbXBh
dGlibGUgZm9yIE1haWxpCgpUaGlzIGNvbW1pdCBkb2N1bWVudHMgdGhlIFFNUCBVRlMgUEhZIGNv
bXBhdGlibGUgc3RyaW5nIGZvciBRdWFsY29tbSBNYWlsaSwKdXNpbmcgcWNvbSxoYXdpLXFtcC11
ZnMtcGh5IGFzIGEgZmFsbGJhY2suCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVmcy1waHkueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBo
eS55YW1sCj4gaW5kZXggYjJjNWM5YTM3NWEzNS4uZjc0NDM0ZjUxNjUzYyAxMDA2NDQKPiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1w
LXVmcy1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeS55YW1sCj4gQEAgLTE2LDYgKzE2LDEwIEBAIGRl
c2NyaXB0aW9uOgo+ICBwcm9wZXJ0aWVzOgo+ICAgIGNvbXBhdGlibGU6Cj4gICAgICBvbmVPZjoK
PiArICAgICAgLSBpdGVtczoKPiArICAgICAgICAgIC0gZW51bToKPiArICAgICAgICAgICAgICAt
IHFjb20sbWFpbGktcW1wLXVmcy1waHkKPiArICAgICAgICAgIC0gY29uc3Q6IHFjb20saGF3aS1x
bXAtdWZzLXBoeQoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhlIGFkZGl0aW9uIG9mIHRoaXMg
Y29tcGF0aWJsZSBzdHJpbmcgcmVxdWlyZSB1cGRhdGVzIHRvIHRoZSBhbGxPZgpjb25kaXRpb25h
bCBibG9ja3MgZnVydGhlciBkb3duIGluIHRoaXMgZmlsZT8KCkl0IGFwcGVhcnMgdGhlIG5ldyBx
Y29tLG1haWxpLXFtcC11ZnMtcGh5IGFuZCBmYWxsYmFjayBxY29tLGhhd2ktcW1wLXVmcy1waHkK
c3RyaW5ncyBhcmUgbWlzc2luZyBmcm9tIHRoZSBhbGxPZiBjb25kaXRpb25hbCBibG9ja3MgdGhh
dCBlbmZvcmNlIGhhcmR3YXJlCmNvbnN0cmFpbnRzIGxpa2UgY2xvY2tzOgoKYWxsT2Y6CiAgLSBp
ZjoKICAgICAgcHJvcGVydGllczoKICAgICAgICBjb21wYXRpYmxlOgogICAgICAgICAgY29udGFp
bnM6CiAgICAgICAgICAgIGVudW06CiAgICAgICAgICAgICAgLSBxY29tLG1pbG9zLXFtcC11ZnMt
cGh5CiAgICAgICAgICAgICAgLSBxY29tLG1zbTg5OTgtcW1wLXVmcy1waHkKCldpdGhvdXQgdGhl
c2UgdXBkYXRlcywgZGV2aWNlIHRyZWVzIHdpdGggaW52YWxpZCBjb25maWd1cmF0aW9ucyBtaWdo
dCBzaWxlbnRseQpwYXNzIHZhbGlkYXRpb24uCgpBbHNvLCBjb3VsZCB0aGlzIGNhdXNlIGEgc2No
ZW1hIHZhbGlkYXRpb24gcmVncmVzc2lvbiBpZiBxY29tLGhhd2ktcW1wLXVmcy1waHkKaXMgbWlz
c2luZyBhcyBhIHN0YW5kYWxvbmUgY29tcGF0aWJsZSBkZWZpbml0aW9uIHVuZGVyCnByb3BlcnRp
ZXMuY29tcGF0aWJsZS5vbmVPZj8KCiAgICAgIC0gZW51bToKICAgICAgICAgIC0gcWNvbSxtaWxv
cy1xbXAtdWZzLXBoeQogICAgICAgICAgLSBxY29tLG1zbTg5OTYtcW1wLXVmcy1waHkKCklmIGEg
ZGV2aWNlIHRyZWUgdXNlcyBvbmx5IHRoZSBIYXdpIGNvbXBhdGlibGUgc3RyaW5nLCBpdCBzZWVt
cyBpdCB3aWxsIGZhaWwKdmFsaWRhdGlvbiBlbnRpcmVseSBiZWNhdXNlIGl0IGlzIHVuZGVmaW5l
ZCBhcyBhIHN0YW5kYWxvbmUgaXRlbS4KCj4gICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAt
IGVudW06Cj4gICAgICAgICAgICAgICAgLSBxY29tLHFjczgzMDAtcW1wLXVmcy1waHkKCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4
MTQwNzAxMTIuMTY3NjMwMC0xLW5pdGluLnJhd2F0QG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
