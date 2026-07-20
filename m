Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C10BC4452A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 13:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/74c/YQTMWLsDcmnQf69sxStE31JRCyTJSnAZXnkAw=; b=FntE/ea2ymoavQ
	QmXV72ssAdbUt44CzOK2MT8htsmzSRSLL0w6NrdX/nf53pEmliO6tZtn58R1qjBCE8v3Fw3U1RzKi
	gVkGJnQXGDCdEVv6Nt3bpCQuP3Ww/Nqr+uQ+oGtnh59Pzlb0Yeefp/LVvsYsksYbyskJ8XIyqTu7t
	sH06WOTCxe/f5JZRy8DXDQjAIozuLxCAETMxPCom93nY/UyYe6tw0OQLNmq3f7ytdbyfhb0im4vz1
	DfLzY+ip/LeRS4ABxEfqYcophrUjULJuuW4hv5uelzmV7XDTYEyBmBiPO7a0puTou8o9zbM1sYF8i
	yE4PlKw/N2QoYRB83w/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloVG-00000006tHH-0u10;
	Mon, 20 Jul 2026 13:57:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloVE-00000006tGz-3hso
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 13:57:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F3F9B60254;
	Mon, 20 Jul 2026 13:57:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEF131F000E9;
	Mon, 20 Jul 2026 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784555871;
	bh=m+cZk20z38gB794miPSg1/y9VNNKvzmxXEI8EGRedQQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CKQIEryuE5wjeJS/9D4XwHEGRE+PzqKgmO5OEBW2t7K8Y1NBjboCzxR0wirG2FNN0
	 zxZQihGlkzBp20quV1fZb9VKlu8aiDUUYylRYkbycNP0NZL947ujMFVU+Ss4XOeYan
	 nlaS1VHu+dJZap1SxIqygP9m4V3M4v6ww2DtfLHWsOTIXb/Hg/r24P7pmrsLMAcTgi
	 1Sst0380wgwqBXQAUBeti1+oO2SqsLHlEZFgEdiiu54M1DSys/FwAduHFkrADeICqo
	 uJP0DDxanCQ6t1PhHk/aadsMzSMEugACiBtfcQgCiOEcWZi/WC0Ht2x5OQ1G5LtOO8
	 mDAWaqnqcJQLQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 phy-next 6/8] dt-bindings: fsl: layerscape-dcfg:
 define DCFG_DCSR region
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260720133642.136324-7-vladimir.oltean@nxp.com>
References: <20260720133642.136324-1-vladimir.oltean@nxp.com>
 <20260720133642.136324-7-vladimir.oltean@nxp.com>
Date: Mon, 20 Jul 2026 13:57:50 +0000
Message-Id: <20260720135750.AEF131F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERlcmVmZXJlbmNpbmcg
TlVMTCBwb2ludGVyIGBzb2NfZGV2X2F0dHJgIG9uIHRoZSBlcnJvciBwYXRoLgotLQoKLS0tIFBh
dGNoIFs2XTogW1BBVENIIHYzIHBoeS1uZXh0IDYvOF0gZHQtYmluZGluZ3M6IGZzbDogbGF5ZXJz
Y2FwZS1kY2ZnOiBkZWZpbmUgRENGR19EQ1NSIHJlZ2lvbiAtLS0KY29tbWl0IDg3YWE3MWJiNWVh
ODVjYzAzODhlMmFkODdmNzIwMzk3ZGUyNDZiMGQKQXV0aG9yOiBWbGFkaW1pciBPbHRlYW4gPHZs
YWRpbWlyLm9sdGVhbkBueHAuY29tPgoKZHQtYmluZGluZ3M6IGZzbDogbGF5ZXJzY2FwZS1kY2Zn
OiBkZWZpbmUgRENGR19EQ1NSIHJlZ2lvbgoKVGhpcyBjb21taXQgZGVmaW5lcyBhIHNlY29uZGFy
eSAicmVnIiBhcnJheSBlbGVtZW50IGluIHRoZSBEQ0ZHIGJpbmRpbmcKZm9yIHRoZSBoaWRkZW4g
RENTUiByZWdpc3RlciBzcGFjZS4gRXhwb3NpbmcgdGhpcyBhcmVhIHBlcm1pdHMgb3BlcmF0aW5n
CnN5c3RlbXMgdG8gcGVyZm9ybSBSZXNldCBDb25maWd1cmF0aW9uIFdvcmQgKFJDVykgb3ZlcnJp
ZGVzLCBlbmFibGluZwpydW50aW1lIHJlY29uZmlndXJhdGlvbiBvZiBuZXR3b3JraW5nIFNlckRl
cyBsYW5lcy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9zb2MvZnNsL2ZzbCxsYXllcnNjYXBlLWRjZmcueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zb2MvZnNsL2ZzbCxsYXllcnNjYXBlLWRjZmcueWFtbAo+IGluZGV4IDNm
YjA1MzRlYTU5N2IuLmZjMTRmZDBiZjg0YjEgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9mc2wvZnNsLGxheWVyc2NhcGUtZGNmZy55YW1sCj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9mc2wvZnNsLGxheWVyc2Nh
cGUtZGNmZy55YW1sCj4gQEAgLTM2LDcgKzM2LDIwIEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAg
ICAtIGNvbnN0OiBzaW1wbGUtbWZkCj4gIAo+ICAgIHJlZzoKPiAtICAgIG1heEl0ZW1zOiAxCj4g
KyAgICBtaW5JdGVtczogMQoKWyAuLi4gXQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoZSBlcnJv
ciBwYXRoIGluIGZzbF9ndXRzX2luaXQoKSBjYXVzZSBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5j
ZT8KCmRyaXZlcnMvc29jL2ZzbC9ndXRzLmM6ZnNsX2d1dHNfaW5pdCgpIHsKICAgIC4uLgoJc29j
LmRjZmdfY2NzciA9IG9mX2lvbWFwKG5wLCBEQ0ZHX0NDU1IpOwoJaWYgKCFzb2MuZGNmZ19jY3Ny
KSB7CgkJb2Zfbm9kZV9wdXQobnApOwoJCWdvdG8gZXJyX25vbWVtOwoJfQogICAgLi4uCmVycl9u
b21lbToKCXJldCA9IC1FTk9NRU07CmVycjoKCWtmcmVlKHNvY19kZXZfYXR0ci0+ZmFtaWx5KTsK
CWtmcmVlKHNvY19kZXZfYXR0ci0+c29jX2lkKTsKICAgIC4uLgp9CgpJZiBvZl9pb21hcCgpIG9y
IHRoZSBhbGxvY2F0aW9uIGZvciBzb2NfZGV2X2F0dHIgZmFpbHMgaW4gZnNsX2d1dHNfaW5pdCgp
LAp0aGUgZXJyb3IgaGFuZGxpbmcgcGF0aCBqdW1wcyB0byBlcnJfbm9tZW0gd2hpbGUgc29jX2Rl
dl9hdHRyIGlzIHN0aWxsIE5VTEwuCgpUaGUgY2xlYW51cCBjb2RlIGF0IHRoZSBlcnIgbGFiZWwg
dW5jb25kaXRpb25hbGx5IGV2YWx1YXRlcwpzb2NfZGV2X2F0dHItPmZhbWlseSBhbmQgc29jX2Rl
dl9hdHRyLT5zb2NfaWQgYmVmb3JlIHBhc3NpbmcgdGhlbSB0bwprZnJlZSgpLiBSZWFkaW5nIHRo
ZXNlIGZpZWxkcyBkZXJlZmVyZW5jZXMgdGhlIE5VTEwgc29jX2Rldl9hdHRyIHBvaW50ZXIsCndo
aWNoIGNhbiBjYXVzZSBhbiBpbW1lZGlhdGUgcGFnZSBmYXVsdCBkdXJpbmcgaW5pdGlhbGl6YXRp
b24uCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNzIwMTMzNjQyLjEzNjMyNC0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9
NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
