Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB58606A327
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 20:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GklWhHdq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=iutMHWw4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+9nP7CXAr5BCrLPd4IlN1hmD9Dr3T2dOv/gKEKP/KSk=; b=GklWhHdqwl0MbEdzP4/LiYpL9k
	BiDiyNe0nuunMnY++zdbkNJQFl6QzYrMWy5yXJMRqZIx69PXiVQx2o7jrp4qPMqcsy7R989zIj/3A
	+vY2pqW97UUaWCTaazCC8ny2HTg1tuK08RytAx24l/VRk/mmim5+Ejm5W3+NPsyFW6eJjF7n5RLVw
	T7hvazPy66DN6ogirtarJ/zaKGCPr1BPCwTVyHGKZpKosEh+QUtuSTUJpyf24AloZszSB2R6eSNpy
	dnrEq4kKlad4TeU1U98vixNbKL+l/ZOiVwgMCPa/1PpYrOEF3WdM6ad45rASn+PxgSiQPC7UkxiTi
	BW8OFL5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRbAX-0000000B056-1BhF;
	Thu, 12 Nov 2026 20:13:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRbAV-0000000B050-3RYS
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 20:13:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 326176110D;
	Thu, 12 Nov 2026 20:13:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 550A31F000C4;
	Thu, 12 Nov 2026 20:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794514390;
	bh=gv6kUfncabuP+ZVdtrbbHCGIexNhvbwVVXmfviemsuk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=iutMHWw4g7rhbFZrf/orTMdre66B/MthrJTwTXM219nq7BedireH7yePdiNPbYVUP
	 lbwHLVbSSyOjfMLoezwIKRtiKG7hsakyp68BkgoYV8VSM6RT+/JN5XYkskxNSyFNzU
	 NnFVsWBEzRNDPaBD97qFnqVGdET0yDtPO+Lm1/F9lO5BNSCgq423YWQ5+HkI0dg+Hb
	 vcLkU9pMVZSN7wUq4sGtTgTeYhNzquwNFLTliF5ik7JhIs4OcnMm5lLO6DhRkLMMrY
	 fbPGIJtFtzSILwkWoc2l2ZmT1Nki/AELfvexs16Hnxtyw8dwsHQJp2ODqzrratLOF2
	 kHe24GslBVztA==
Message-ID: <46821acb-2db9-42e1-b93d-8b6d39f259eb@kernel.org>
Date: Thu, 12 Nov 2026 21:13:03 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: phy: qcom: Relax required supplies
To: Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261021022446.3619435-1-robh@kernel.org>
 <avWbmsjkYo2LMJKs@parshuram> <20261112125346.GA3821108-robh@kernel.org>
 <avX9Qrcapcnutdgh@baldur>
 <CAL_JsqLGqYAd-BedjNCCmxByJQ_z2Cij9J_z-ifiX9iJs_gqSg@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
In-Reply-To: <CAL_JsqLGqYAd-BedjNCCmxByJQ_z2Cij9J_z-ifiX9iJs_gqSg@mail.gmail.com>
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTIvMTEvMjAyNiAyMDoyMiwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gVGh1LCBOb3YgMTIs
IDIwMjYgYXQgMTI6MzDigK9QTSBCam9ybiBBbmRlcnNzb24gPGFuZGVyc3NvbkBrZXJuZWwub3Jn
PiB3cm90ZToKCgoocmVwbHlpbmcgb25seSB0byBwYXJ0cyBvZiB0aGUgbWVzc2FnZSkKCgo+IAo+
Pj4gQ2FuIHRoZSBRQ29tIGZvbGtzIHN0b3AgZG9pbmcgdGhhdCEgQ29vcmRpbmF0ZSBhcHBseWlu
ZyB0aGUgc2VyaWVzIG9yCj4+PiB0YWtlIHRoZSBiaW5kaW5nIGFuZCBkdHMgY2hhbmdlcyBpbiAx
IHRyZWUuCj4+Cj4+IEkgYXNzdW1lIHlvdSdyZSByZWZlcnJpbmcgdG8gIlFDb20gZm9sa3MiIGlu
IHRoZSBzZW5zZSAiYW55IG1haW50YWluZXIKPj4gdG91Y2hpbmcgYSBiaW5kaW5nIGNoYW5nZSBy
ZWxhdGVkIHRvIGEgcWNvbSBwbGF0Zm9ybSI/Cj4gCj4gTm8sIHByaW1hcmlseSB5b3UgYW5kIHRo
ZSBzdWJtaXR0ZXIgSSBndWVzcy4gU3VibWl0dGVycyBzaG91bGQgYmUKPiBhd2FyZSBvZiBkZXBl
bmRlbmNpZXMgaW4gdGhlaXIgc2VyaWVzIGFuZCBzdWdnZXN0IGhvdyB0aGluZ3MgYXJlCj4gbWVy
Z2VkLiBPdGhlcndpc2UsIGl0IGZhbGxzIG9uIHlvdSB0byBjYXJlIHRoYXQgd2FybmluZ3MgYXJl
IGdldHRpbmcKPiBpbnRyb2R1Y2VkLgoKV2UgYWxsIGhhdmUgYmVlbiBzd2FtcGVkIHdpdGggcGF0
Y2hlcyBhbmQgUXVhbGNvbW0gaGF2ZSBiZWVuIHByb2JhYmx5CnRoZSBidXNpZXN0IGFybTY0IHBs
YXRmb3JtIGZvciBtb250aHMgbm93LgoKZm9yIGkgaW4gYXJjaC9hcm02NC9ib290L2R0cy8qIDsg
ZG8gZWNobyAiJHtpfTokKGdpdCBsb2cgLS1uby1tZXJnZXMKLS1vbmVsaW5lIHY3LjAuLnY3LjQt
cmMxIC0tICRpIHwgd2MgLWwpIiA7IGRvbmUKCnFjb206IDEwMTYKZnJlZXNjYWxlOiA0ODUKcmVu
ZXNhczogMjE1CgpRdWFsY29tbSBTb0MgZ290IG9uZSBtb3JlIG1haW50YWluZXIsIHNvIHRoZXJl
IGlzIGNhdGNoaW5nIHVwLCBidXQKcHJvYmFibHkgbm90IGVub3VnaC4KCj4gCj4gSSB3b3VsZCBu
b3QgY2FyZSBzbyBtdWNoIHdoZW4gdGhlcmUgYXJlIHRyYW5zaWVudCB3YXJuaW5ncyBpbiBuZXh0
LAo+IGJ1dCBJIGRvbid0IHdhbnQgdG8gYmUgdGhlIG9uZSBjaGFzaW5nIHRoZW0gZG93bi4gQnV0
IEFGQUlDVCwgaXQncwo+IGFsd2F5cyBtZS4gTm8gb25lIGJlYXRzIG1lIHRvIGl0IGFuZCBJJ20g
bm90IGFsbCB0aGF0IGZhc3QgaW4KPiBub3RpY2luZy4gSSBqdXN0IGNvbXBhcmUgYWxsIHRoZSB3
YXJuaW5ncyBieSBwbGF0Zm9ybSBmb3IgTGludXMgdnMuCj4gbmV4dCB3aXRoICJnbC1kaWZmLWR0
Yi13YXJuaW5nIC1wIGFybTY0IiBmcm9tIHRoaXMgcmVwb1syXSwgYW5kIGxvb2sKPiBmb3IgdGhp
bmdzIG1vdmluZyBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uLiBPZiBjb3Vyc2UgdGhpcyBpcyBhbGwg
YWZ0ZXIKPiBhcHBseWluZyB3aGljaCBpc24ndCBpZGVhbC4KCkZXSVcsIEkgZG8gdGVzdCBhbGwg
U2Ftc3VuZyBvbmVzIGFuZCBJIGxvb2sgb25seSBhdCBzb21lIG9mIFF1YWxjb21tCmJvYXJkcywg
YmVjYXVzZSB0aGVyZSB3ZXJlIGp1c3QgdG9vIG1hbnkgd2FybmluZ3MgdG8gaGF2ZSBhIGNsZWFu
CmR0YnNfY2hlY2sgZm9yIHFjb20uIEkgZG8gcmVwb3J0IHRoZW0gdG8gQmpvcm4vS29ucmFkIFsx
XSwgYnV0IHRoYXQncwppbmRlZWQgb25seSBzdWJzZXQgb2YgZW50aXJlIHFjb20gZWNvc3lzdGVt
LiBJIGtub3cgdGhhdCBhIGZldyBvdGhlciBTb0MKcGxhdGZvcm1zIGtlZXAgdHJhY2sgKFRJIGF0
IGxlYXN0KS4KClsxXSBodHRwczovL2tyemsuZXUvIy9idWlsZGVycy8xMDIKCgo+IAo+PiBEbyB5
b3UgaGF2ZSBzb21lIENJL2d1aWRhbmNlL3Rvb2xpbmcgZm9yIFZpbm9kIChhbmQgb3RoZXIgc3Vi
c3lzdGVtCj4+IG1haW50YWluZXJzKSB0byBwZXJmb3JtIHN5c3RlbS13aWRlIERULXZhbGlkYXRp
b24gd2hlbiBjb25zaWRlcmluZwo+PiBtZXJnaW5nIGEgYmluZGluZyBjaGFuZ2U/Cj4gCj4gVGhp
cyBvbmUgaXMgYW4gQUJJIGJyZWFrIGJlY2F1c2UgaXQgYWRkcyBuZXcgcmVxdWlyZWQgcHJvcGVy
dGllcy4gSSBkbwo+IGhhdmUgc29tZSB0b29saW5nIHRoYXQgbG9va3MgZm9yIEFCSSBjaGFuZ2Vz
LCBidXQgaGF2ZW4ndCBjb21taXR0ZWQgaXQKPiBiZWNhdXNlIEkgaGF2ZW4ndCBmaWd1cmVkIG91
dCB0aGUgYmVzdCB3YXkgdG8gZGVwbG95IGl0LiBJIHRoaW5rIGZvcgo+IGFueXRoaW5nIHRoYXQg
aXMgYW4gQUJJIGNoYW5nZSwgdGhlIGJpbmRpbmcgYW5kIGR0cyBmaWxlcyBuZWVkIHRvIGdvCj4g
aW4gdG9nZXRoZXIuCj4gCj4gSSB0aGluayBpdCBpcyB0aW1lIHRvIHJlY29uc2lkZXIgdGhlIGRl
ZmF1bHQgb2YgYmluZGluZ3MgZ28gaW4gd2l0aAo+IHRoZSBkcml2ZXIuIFRoYXQgd29ya3Mgb2th
eSBmb3IgbmV3IGJpbmRpbmdzIGFzIGxvbmcgYXMgdGhlIHBsYXRmb3JtCj4gbWFpbnRhaW5lciBk
b2Vzbid0IHRha2UgLmR0cyBjaGFuZ2VzIGJlZm9yZSBiaW5kaW5ncyBsYW5kIChhbHNvIGFuCj4g
aXNzdWUpLiBIb3dldmVyLCBmb3IgY2FzZXMgbGlrZSB0aGlzLCB3ZSBuZWVkIHRoZSBvcHBvc2l0
ZSBvcmRlci4gV2UKPiBuZWVkIHRvIGZpZ3VyZSBzb21ldGhpbmcgb3V0IGJlY2F1c2UgdGhpcyBp
cyBvbmx5IGdvaW5nIHRvIGJlIG1vcmUgb2YKPiBhbiBpc3N1ZSBhcyB3ZSBnZXQgdG8gd2Fybmlu
ZyBmcmVlIChhbmQgd2UgYXJlIGNsb3NlKS4KCldlIGhhdmUgYmVlbiB0YWxraW5nIGFib3V0IHRo
aXMgZm9yIHNvbWUgdGltZSBhbmQgcmVjZW50IGNvbnNlbnN1cyB3YXMKdGhhdCBTb0MgbWFpbnRh
aW5lcnMgY2FuIGZyZWVseSB0YWtlIHN1Y2ggYmluZGluZ3Mgd2hlbiBkcml2ZXIgc3Vic3lzdGVt
Cm1haW50YWluZXJzIGxhZyBiZWhpbmQuIFRoZSBjYXNlIGhlcmUgaXMgYSBiaXQgb3Bwb3NpdGUg
LSBkcml2ZXIKc3Vic3lzdGVtIHdhcyBiZWZvcmUgU29DLgoKU28gbGV0J3MgY2hhbmdlIHRoZSBn
ZW5lcmljIHJlY29tbWVuZGF0aW9uL3BvbGljeT8gV2hlbmV2ZXIgcGF0Y2hzZXQKdG91Y2hlcyBi
aW5kaW5ncyBhbmQgRFRTLCBhbmQgdGhlIGJpbmRpbmdzIGRvIG5vdCBuZWVkIGFueSBkcml2ZXIK
dXBkYXRlcyBsaWtlIHRoZXkgYWRkIG9ubHkgZnJvbnQtc3BlY2lmaWMgY29tcGF0aWJsZXMsIHRo
ZSBTb0Mgc2hvdWxkCnRha2UgZW50aXJlIHNldD8KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
