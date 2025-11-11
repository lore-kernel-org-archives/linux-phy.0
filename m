Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B0F1CCF9E3
	for <linux-phy@archiver.kernel.org>; Tue, 11 Nov 2025 07:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a75E0BQSj91fEFfeDqRThfpExyd5aY6zVu3RGGIPNH0=; b=AthMPG8uB1Tb5N
	grAqbh030W87t2rwV+6uXcbxSRgjqj3YCHeS4iMKDRH+YXiQSDG4SOKOi589DlLxpaiuHUj3hE2nt
	/SACydI6s/PeY2mOI7KDLAszB/4OlQj1FgBbcJK0qCHALG1AdUAWGM2J9IJpf7RBAWP6JL5kzGKoK
	V12dudocwvknYhmvL6PybvU8texS5QmNkXPEsFTX9hWotQFzQXvyapn1XNDoKLwHStyceYZPxN9m/
	V9Gk1Bg9mA1GpYLQbu/xdoyprxnjSfa9+YSeQ6h6RWooVySicZRDabqN8S2lK9ctPScZfwU6RGTBo
	FXz2EYUGdYYdvT9R24sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIjHF-00000006jLh-12Hn;
	Tue, 11 Nov 2025 07:58:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIjHD-00000006jLL-2mi9
	for linux-phy@lists.infradead.org;
	Tue, 11 Nov 2025 07:58:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 12ECC43A1E;
	Tue, 11 Nov 2025 07:58:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 601EEC116D0;
	Tue, 11 Nov 2025 07:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762847934;
	bh=t8z+DsR+SctqG4ry1HDsLKkUjYHAZMrxzuomQp6SW58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tjGEIOutK6PmrJoukZphpytayAF+fN82nQo8X89aDoeZmXiJTESO7W7a4iCGwlnUE
	 tR9j+ZRBesJWZkPY7Ez3PCi8MvsL2UwzILa6x4Zc8xXRQiXousGE08DFoTBWfkDzuN
	 Yjvwhez06aDEntSgIccF9r1I2vpPME223IHW8ajRiiyGwOxQzy6l7bPQrZwcTOcAs9
	 lVKCgVCtyrjySyi9g0K9Ss+DmNDhBqbsmkhfQrxmvpYiCWuJLvnBIqj2PQw2Ve5Q5q
	 oU6mcH8uWT3AjaMQHSPYLN79vyhiXQQEjbSJC4iZXuIJQnC3wSzn5BYXxI2n10S6KV
	 deziRAddUrExw==
Date: Tue, 11 Nov 2025 08:58:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Amit Singh <quic_amitsi@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	lumag@kernel.org, neil.armstrong@linaro.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, quic_rajeevny@quicinc.com, 
	quic_vproddut@quicinc.com
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom: qmp-combo: add support for
 vdda-aux regulator
Message-ID: <20251111-innocent-affable-saluki-2bf8bb@kuoka>
References: <20251110115806.2379442-1-quic_amitsi@quicinc.com>
 <20251110115806.2379442-2-quic_amitsi@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251110115806.2379442-2-quic_amitsi@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_235855_745468_D687F8E5 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBOb3YgMTAsIDIwMjUgYXQgMDU6Mjg6MDRQTSArMDUzMCwgQW1pdCBTaW5naCB3cm90
ZToKPiBBZGQgc3VwcG9ydCBmb3IgdGhlICJ2ZGRhLWF1eCIgcmVndWxhdG9yIGluIHRoZSBRTVAg
UEhZIGJpbmRpbmcsIHdpdGgKPiBhbiBlbmFibGVfbG9hZCBvZiAzNjAwMCDCtUEuIE1hbmFnaW5n
IHRoaXMgYXV4aWxpYXJ5IHJhaWwgaW4gdGhlIGRyaXZlcgo+IGFsbG93cyBwcm9wZXIgcG93ZXIg
Y29uZmlndXJhdGlvbiBvbiBwbGF0Zm9ybXMgdGhhdCBwcm92aWRlIHRoZSBzdXBwbHksCgpXaGF0
IGlzIGhhcyB0byBkbyBhbnl0aGluZyB3aXRoIHRoZSBkcml2ZXI/IFdoeSBhcmUgeW91IGRvY3Vt
ZW50aW5nIHRoZQpkcml2ZXI/CgpJIHVuZGVyc3RhbmQgdGhpcyB0aGF0IHRoZXJlIGlzIG5vIHN1
Y2ggc3VwcGx5IGluIHRoZSBoYXJkd2FyZSBhbmQgeW91Cmp1c3QgcG9rZSB0byBzb21lb25lIGVs
c2UncyBzdXBwbHkuCgoKPiBpbXByb3ZpbmcgUEhZIHN0YWJpbGl0eS4KPiAKPiBUaGlzIGNoYW5n
ZSBpcyBhIG5vLW9wIG9uIHBsYXRmb3JtcyB0aGF0IGRvIG5vdCBkZWZpbmUgdGhlICJ2ZGRhLWF1
eCIKPiByZWd1bGF0b3IuCgpXaGljaCBwbGF0Zm9ybXMgYXJlIHRoZXNlPyBZb3VyIHBhdGNoIGNs
YWltcyBoZXJlIHRoYXQgYWxsIG9mIHRoZQpwbGF0Zm9ybXMgZGVmaW5lIHZkZGEtYXV4LCBiZWNh
dXNlIHlvdSBkaWQgbm90IGNvbnN0cmFpbiBpdCBwZXIgdmFyaWFudC4KCkJlc3QgcmVnYXJkcywK
S3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
