Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B921BC87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 09:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCXX+bCUZuCE42g8OzFgMJEGt9t6pYj5uD6fmR1iI8I=; b=w7Up9hJx7xeSy4
	f3LHi4WArO6oS+O/+/XP6EtrhqdQj7yqrIenNGHAPkRUF92okFRx3XatKhBEFw72z+7EM46p7XlfS
	lPd0A5CmCRa0JHKUA1XuUIuTZ8fX4rmq7msGEJ2dfL4sts4O5X7ETHwBwxEKP/X0n5hEo6KCkV6aU
	QKKWhWYWuvT52sXAahd/rL01TYVtzZJZUD34uLMlptMKQkVvq0Xc5sg/XX7URUz3jQJjnxegqQt0B
	TBFiK/d+W0zNWR7azgPqzdrdAnbns9UHUY1qSFXJUtPsLooCds0n/Iq6F97hmFrCHXDpsAaPaUteW
	U8VnBS7t/yj9FyF69Oug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Oj-000000019gb-27HM;
	Wed, 30 Jul 2025 09:46:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Og-000000019fN-3lnd
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 09:46:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9A0BE4619E;
	Wed, 30 Jul 2025 09:46:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78473C4CEFA;
	Wed, 30 Jul 2025 09:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753868814;
	bh=ZsuZO+RMew8FjNZ63X1kweLqkn98ggjS7FcHOVhGvxg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kvn1vn5JOED55dY/l8REYApdhPJFhwa8B14ciG2x2pqM17BMyJaus7UiVgCfYUM7S
	 +5gFSxmDtONn3mnl+rMfhAlyTyE3yOibUODYATM0RpdhXgAJTGJajNeazmjRHVy2So
	 z8UhRgjqfoIQy3WiE3v3OmkRPRyhVKD0AOHVeP7hhro6FpaAU1tykCYhqhaoznCeEM
	 zaGke4QnNtAt2uLtse8Rofzxu98JuC8CdEp2h/v1/bXRZ4528Zbpa1vIknBdNzZ2UF
	 bSMmJQzOELCh9T9DjrOdIWT3Et4uRgjuKs4W/XGhqs0wRSRdRxqYSsg8If3qPnEvit
	 gRVzETZa/De9A==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uh3Oh-000000006BH-0ATp;
	Wed, 30 Jul 2025 11:46:55 +0200
Date: Wed, 30 Jul 2025 11:46:55 +0200
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
Subject: Re: [PATCH v6 2/3] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
Message-ID: <aInqD8DeqRe8V_H2@hovoldconsulting.com>
References: <20250725095302.3408875-1-ziyue.zhang@oss.qualcomm.com>
 <20250725095302.3408875-3-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250725095302.3408875-3-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_024654_957466_36CD6A26 
X-CRM114-Status: GOOD (  10.89  )
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

T24gRnJpLCBKdWwgMjUsIDIwMjUgYXQgMDU6NTM6MDFQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
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
bmdAb3NzLnF1YWxjb21tLmNvbT4KClJldmlld2VkLWJ5OiBKb2hhbiBIb3ZvbGQgPGpvaGFuK2xp
bmFyb0BrZXJuZWwub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
