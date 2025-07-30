Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 825ACC87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 09:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2Jjoe/WPMZuFqiRvsNcU8PQMXg8nPHirf+//01Bwdk=; b=4bwJimKer6FKmA
	zHq8kP/wi5oLiCbJZtRr2KB3prH/PG74m60vt6WDElbyITVUfWa9Hv+UYQhoyaa7SjP5WWuH2f4+3
	ujXa8Vjm2T2Ac3uRthpmKLHHx+22E9ykDgiyJoGY0KKb7xIzEgzhewpWK20WrnHzMT86lUuUaRcjI
	DgYve6Pac/6bOM+TuIpIWwb9y64FdjpqXkUA4ceA2wQAGEmyKIUDnLJfVuieHnNTYREUQzTRXNcXC
	cX5mYVZLilFh+KBSJbXytI1AniDDqxRxCy68RANzs2Y3bSDPz25WCOPPvXMPjMzcvhcOiGcU++gAX
	aplkTWhSg/w3RXx0kz6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Uk-00000001AWS-19Dl;
	Wed, 30 Jul 2025 09:53:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Uh-00000001AUr-3ZJd
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 09:53:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D82075C5C8A;
	Wed, 30 Jul 2025 09:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 800FEC4CEF5;
	Wed, 30 Jul 2025 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753869185;
	bh=5Mrrxi9bNBL8D/ee8NRHVOpef29mu452vpZ0ynsESPE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LBFMp/QttoquzlQynDEx48o4qachvu35Xu5wgZEi84KHfxF4/7NqsilYzjh3g2E0P
	 sTWvy+MuYy8KQX/MM1bm4VvGV1Re+e6/YkCDfkl9dHJJBoQeg1SOKrsZ5TiGlBwmWj
	 +AHIZbOIQcpQLrLyq9f9WXlHZwt6RbsI1JG2ypJ9YkZaLh5upPYBOCyIR4dv28xPt/
	 Z6ykRMiyzfbqpEkQLGU8OZictU0I76H5hlEsSK5rBP6tguIm2HHDhvJDMKBVL4n/zL
	 c0ExIvaQ2ayGvunrFFAcOFcg2eRK1dg6XfrmlZU/3SS2ydvN0p2sM+GKvBk7C+YI/P
	 QODw0LxLr1CXQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uh3Ug-000000006Gw-0XOb;
	Wed, 30 Jul 2025 11:53:06 +0200
Date: Wed, 30 Jul 2025 11:53:06 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
Message-ID: <aInrgnGsBSVpxrWE@hovoldconsulting.com>
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
 <20250725102231.3608298-3-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250725102231.3608298-3-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_025307_925910_0D331E8F 
X-CRM114-Status: GOOD (  11.26  )
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

T24gRnJpLCBKdWwgMjUsIDIwMjUgYXQgMDY6MjI6MzBQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gVGhlIGdjY19hdXhfY2xrIGlzIHVzZWQgYnkgdGhlIFBDSWUgUm9vdCBDb21wbGV4IChS
QykgYW5kIGlzIG5vdCByZXF1aXJlZAo+IGJ5IHRoZSBQSFkuIFRoZSBjb3JyZWN0IGNsb2NrIGZv
ciB0aGUgUEhZIGlzIGdjY19waHlfYXV4X2Nsaywgd2hpY2ggdGhpcwo+IHBhdGNoIHVzZXMgdG8g
cmVwbGFjZSB0aGUgaW5jb3JyZWN0IHJlZmVyZW5jZS4KPiAKPiBUaGUgZGlzdGluY3Rpb24gYmV0
d2VlbiBBVVhfQ0xLIGFuZCBQSFlfQVVYX0NMSyBpcyBpbXBvcnRhbnQ6IEFVWF9DTEsgaXMKPiB0
eXBpY2FsbHkgdXNlZCBieSB0aGUgY29udHJvbGxlciwgd2hpbGUgUEhZX0FVWF9DTEsgaXMgcmVx
dWlyZWQgYnkgY2VydGFpbgo+IFBIWXPigJRwYXJ0aWN1bGFybHkgR2VuNCBRTVAgUEhZc+KAlGZv
ciBpbnRlcm5hbCBvcGVyYXRpb25zIHN1Y2ggYXMgY2xvY2sKPiBnYXRpbmcgYW5kIHBvd2VyIG1h
bmFnZW1lbnQuIFNvbWUgbm9uLUdlbjQgUXVhbGNvbW0gUEhZcyBhbHNvIHVzZQo+IFBIWV9BVVhf
Q0xLLCBidXQgdGhleSBkbyBub3QgcmVxdWlyZSBBVVhfQ0xLLgo+IAo+IFRoaXMgY2hhbmdlIGVu
c3VyZXMgcHJvcGVyIGNsb2NrIGNvbmZpZ3VyYXRpb24gYW5kIGF2b2lkcyB1bm5lY2Vzc2FyeQo+
IGRlcGVuZGVuY2llcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8eml5dWUuemhh
bmdAb3NzLnF1YWxjb21tLmNvbT4KCldpdGggdGhlIGZpeGVzIHRhZyBhZGRlZCAoS29ucmFkJ3Mg
Y29tbWVudCBzaG91bGQgYmUgcGlja2VkIHVwIGJ5IHRoZQptYWludGFpbmVyL3Rvb2xpbmcsIG5v
IG5lZWQgdG8gcmVzZW5kIGZvciB0aGF0KToKClJldmlld2VkLWJ5OiBKb2hhbiBIb3ZvbGQgPGpv
aGFuK2xpbmFyb0BrZXJuZWwub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
