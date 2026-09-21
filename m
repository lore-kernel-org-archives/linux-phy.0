Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A14C982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QO9ykDjJB6jq3pUoygMylwsuyaAz0LOP3cpib0Q85Yg=; b=JY1ah96YYFV4Eo
	5bbOGSjpk0sb9ZY4M0CPTxKwSsj4P3j5VTnvV14LOpxf50T/VONxPRbqL/YTDxwtnCjh0Xwy6ZTYg
	idGqiCmf/iw3PW1xeViGorJDFwy+BgO19szJjy7qyBoYGU10tATPUrwIcNTy4b8OIOGJbish0D8a4
	/oAev8jO5ErGzYmL6lYyDEIQ8803rJjUlVmWW7AHwh2YNcsyGkJRyGUbVoaeocrrPpVYoQarTs3ni
	GAqklkRMYGYx4+J+m4N6zvJmbyGWNUpo5trUS9nNC4UWdDCN7fHJcy439Pg1LuO1RdR3iq38wpnfT
	r0ODmZ3bsd1Et8DfOtkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8buS-00000001poV-2wWN;
	Mon, 21 Sep 2026 11:10:08 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8buR-00000001pnZ-0fh6
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:10:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 86A51600C8;
	Mon, 21 Sep 2026 11:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE4841F000FF;
	Mon, 21 Sep 2026 11:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789989006;
	bh=4Q3bDigOlcfpvCpMmi9ikgHhneOy5h8tNUgqTX3xxiI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B1UvCnHYpP+4853Goc5Qpi9SiS5OUIyIJZnpHJVVvTjtgsmjlJIH6lP4leTycaUhl
	 ioKzH4FHj+HBQX/NEE4FbnA1kriaytKgYiEcSKf4n000vWgBlCnjdjc3qCNNfbCqAa
	 7hylIge2gh6Sjc3MVTZhRc00JLJdUqifd9/tcOj48QQPM8bocovaqe/JU10cCca/61
	 aNf96P6xQWz1JeWc6S3PlwjauKVVRTKh+G2h+2M9Y2KFzHLn3f4+IhfmHNzK6r1LAs
	 Gfj6nEshdWHlXeM5934vFDgeg/CWqWx7PoyaTZkq7/Fjct4EuemkpsQG9ZgKV82KRo
	 5v8vupBvfx8uQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/6] dt-bindings: PCI: qcom-ep: Add QCS8300 compatible
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260921-monaco_ep-v1-2-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-2-63c5282fb0db@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:10:05 +0000
Message-Id: <20260921111005.BE4841F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6
IG1pc3NpbmcgUUNTODMwMCBjb21wYXRpYmxlIHN0cmluZyBpbiBjb25kaXRpb25hbCBibG9jawot
LQoKY29tbWl0IGU1NDNjZTM5OWE2YjFjNzM3ZjlkNWE1MjRjOTA3Y2Q3ZDk2YjRmZmIKQXV0aG9y
OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21t
LmNvbT4KCmR0LWJpbmRpbmdzOiBQQ0k6IHFjb20tZXA6IEFkZCBRQ1M4MzAwIGNvbXBhdGlibGUK
ClRoZSBRQ1M4MzAwIFBDSWUgRW5kcG9pbnQgY29udHJvbGxlciBpcyBjb21wYXRpYmxlIHdpdGgg
dGhlIFNBODc3NVAgUENJZQpFbmRwb2ludCBjb250cm9sbGVyLiBUaGlzIGNvbW1pdCBkb2N1bWVu
dHMgdGhlIFFDUzgzMDAgY29tcGF0aWJsZSBzdHJpbmcKYW5kIGl0cyBmYWxsYmFjayB0byB0aGUg
U0E4Nzc1UCBjb21wYXRpYmxlLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtZXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLWVwLnlhbWwKPiBpbmRleCBiZWQ5YTQwYjE4NmJj
Li43ZjlhMGJjOTU4ZDFiIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcWNvbSxwY2llLWVwLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1lcC55YW1sCj4gQEAgLTEzLDEwICsxMywxNSBA
QCBwcm9wZXJ0aWVzOgo+ICAgIGNvbXBhdGlibGU6Cj4gICAgICBvbmVPZjoKPiAgICAgICAgLSBl
bnVtOgo+ICsgICAgICAgICAgLSBxY29tLHFjczgzMDAtcGNpZS1lcAo+ICAgICAgICAgICAgLSBx
Y29tLHNhODc3NXAtcGNpZS1lcAoKW1NldmVyaXR5OiBNZWRpdW1dCldpbGwgYSBkZXZpY2UgdHJl
ZSBub2RlIHVzaW5nIG9ubHkgInFjb20scWNzODMwMC1wY2llLWVwIiBzaWxlbnRseSBieXBhc3MK
dGhlIGNsb2NrIGFuZCBjbG9jay1uYW1lcyBjb25zdHJhaW50cz8KClNpbmNlIHRoaXMgY29tcGF0
aWJsZSBzdHJpbmcgaXMgbm93IGFsbG93ZWQgYXMgc3RhbmRhbG9uZSBpbiB0aGUKcHJvcGVydGll
czpjb21wYXRpYmxlOm9uZU9mOmVudW0gYmxvY2ssIGl0IGFwcGVhcnMgdG8gYmUgbWlzc2luZyBm
cm9tIHRoZQphbGxPZjppZjpwcm9wZXJ0aWVzOmNvbXBhdGlibGU6Y29udGFpbnM6ZW51bSBjb25k
aXRpb25hbCBibG9jayBlbmZvcmNpbmcKU0E4Nzc1UCBjb25zdHJhaW50cyBsYXRlciBpbiB0aGUg
ZmlsZToKCiAgLSBpZjoKICAgICAgcHJvcGVydGllczoKICAgICAgICBjb21wYXRpYmxlOgogICAg
ICAgICAgY29udGFpbnM6CiAgICAgICAgICAgIGVudW06CiAgICAgICAgICAgICAgLSBxY29tLHNh
ODc3NXAtcGNpZS1lcAogICAgdGhlbjoKICAgICAgcHJvcGVydGllczoKICAgICAgICBjbG9ja3M6
Ci4uLgoKU2hvdWxkIHFjb20scWNzODMwMC1wY2llLWVwIGJlIGFkZGVkIHRvIHRoaXMgZW51bSBh
cyB3ZWxsPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDkyMS1tb25hY29fZXAtdjEtMC02M2M1MjgyZmIwZGJAb3NzLnF1YWxjb21t
LmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
