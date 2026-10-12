Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 704EECA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 15:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZv5+nmRDYuITDMrSRKVhHnbr/61gjfQKw5cTKi3jO0=; b=vFOhxqk2idu9e1
	NYVcsJkys4sT6XE9EFpsAIqMit/sntM9udpT9rxd4cKlSi/Nd1n5i0Tk0hyShmwSJBpuXKCQckwfI
	EGxF8FrE+6KyC6AVXIzlxH1woyeR0BGnsoJJWKlqoXCB9/G06aJIzBeqm7/DOK3G6rIaVHaEJ01+w
	O/+A8APR/hzOh8HFZyoud9dincFY3N7QQg63y1PcAtaY63sutnWcMuPtTgiwbcCbw5B2c12ymK/E7
	uxvZhLzvXSm2RGgK/JHQZMC8BHgmEVagoZXVyDnva+v3/L0exnhPgV6Y5N2AvbzJEeaBwIHr3VtRI
	i7qyYT8uLVXF4UfMkSng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIIj-0000000AtBd-0dTl;
	Mon, 12 Oct 2026 15:50:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIIh-0000000AtBR-20At
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 15:50:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A6EB16020F;
	Mon, 12 Oct 2026 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 711241F0089B;
	Mon, 12 Oct 2026 15:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791820254;
	bh=jgr67/or1a1c/B3+4YJbHGtTvO+rIAQEWqELo95zqOs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mTFNcYaTXDOUPmO3VtBoWVl9qEBJOxF1xBcrWIztIQ/Iu+w04nhCyKV/NRDh7Pu/4
	 p455s5/yOh3M63dlV0VA4jNIEkYt6I0zsFvAfMAK0t3CWjRkW3d4340VRea7pODRrL
	 acOjGKuZ4DLpUP/IhUm3W1cAAGzZKSLSumY1MvDkFD7apQW/3j0zzsh2iDjNNWknsA
	 mKw6CDhxLuuS3RGi3Db7/bPHmA4yo0CdLuVu8+UlJgVCD4n7CFqDqjKJ5syJ1dZ/kh
	 n17gQAXG/nnNAI98TXOQirLWo6AwLxCMltp3+IeQ2Lf9vKuF6suCY4Y23UmFxeQM5N
	 2F6UqDed9AKWQ==
Date: Mon, 12 Oct 2026 21:20:46 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
Message-ID: <as0BPGd_BJivizEW@debian>
References: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMDM6MTA6MDlQTSArMDUzMCwgS3Jpc2huYSBLdXJhcGF0
aSB3cm90ZToKPiBPbiBHbHltdXIsIGl0IGlzIG9ic2VydmVkIHRoYXQgYWx0aG91Z2ggdGhlIGV4
aXQgY2FsbCBpcyBkb25lLCB0aGVyZSBpcyBhCj4gcG93ZXIgbGVha2FnZSBzZWVuIG9uIFNNQjIz
NzAgY2hhcmdlciAod2hpY2ggZW1iZWRzIHRoZSBlVVNCMiBtb2R1bGUgYXMKPiB3ZWxsKS4gQXMg
cGVyIHJlY29tbWVuZGF0aW9uIG9mIEhXIHRlYW0sIGRpc2FibGUgdGhlIHJlcGVhdGVyIGR1cmlu
ZyB0aGUKPiBleGl0IGNhbGwgdG8gcHJldmVudCB0aGlzIHBvd2VyIGxlYWthZ2UuCj4gCj4gUmV2
aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBLcmlzaG5hIEt1cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5x
dWFsY29tbS5jb20+Cj4gLS0tCj4gUkIgdGFnIGZyb20gS29ucmFkIHJlY2VpdmVkIG9uIGFuIGlu
dGVybmFsIHJlaXZldy4KPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVz
YjItcmVwZWF0ZXIuYyB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVw
ZWF0ZXIuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWV1c2IyLXJlcGVhdGVyLmMK
PiBpbmRleCBlZmVlYzQ3MDlhMTUuLjdkYjJmYmZmNjE2MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRlci5jCj4gKysrIGIvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIuYwo+IEBAIC0yMjksNyArMjI5LDEw
IEBAIHN0YXRpYyBpbnQgZXVzYjJfcmVwZWF0ZXJfc2V0X21vZGUoc3RydWN0IHBoeSAqcGh5LAo+
ICBzdGF0aWMgaW50IGV1c2IyX3JlcGVhdGVyX2V4aXQoc3RydWN0IHBoeSAqcGh5KQo+ICB7Cj4g
IAlzdHJ1Y3QgZXVzYjJfcmVwZWF0ZXIgKnJwdHIgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiAr
CXN0cnVjdCByZWdtYXAgKnJlZ21hcCA9IHJwdHItPnJlZ21hcDsKPiArCXUzMiBiYXNlID0gcnB0
ci0+YmFzZTsKPiAgCj4gKwlyZWdtYXBfd3JpdGUocmVnbWFwLCBiYXNlICsgRVVTQjJfRU5fQ1RM
MSwgMCk7CgpDYW4geW91IHNhZmVseSB3cml0ZSAwIHRvIHRoaXMgcmVnaXN0ZXI/IFNpbmNlIGlu
aXQoKSBqdXN0IHNldHMgRVVTQjJfUlBUUl9FTiwKd29uZGVyaW5nIGlmIHlvdSBuZWVkIHRvIGNs
ZWFyIHRoYXQgYml0IG9ubHkuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
