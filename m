Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5FBDCD4F3C
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wnMbzExnnyOiDuZW7jKhrnHsCE3UyH5+usn7oKn/Ew=; b=JpVo4/C/AiNyX9
	34dCrRtKwX/WGU4o6KP6+aZS+Uno53B1L0PZ7U+wsqbmWsHKVyknwUij17ondT0UA4GQDrHK1lLhm
	hU53A0NHqs5kDhcXsGaoySLOD65sxxhYMw4KpOX9puBupeiLjgmB7U0udIglGgQfDCL3PQdpgajkq
	LirFbutH3aez03ar2QAHnCbGSpTDzyhY6ljvvQG8/w2+oNa/MpdzDV5Q8HNwwac/0pxLClBecB472
	lfPTTdvtw2VlrTJWjFRzu7hQ/cYO+ACDbOpv9ISMqXCqf0ITt1oOcNzFb/ueuwAp+G7N/FrGVuZzb
	OTw88kWT1I/5MNU4vroA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDPb-00000000Fm8-2e03;
	Tue, 19 May 2026 05:54:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDPZ-00000000FlY-1ctp
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:54:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CD35F40889;
	Tue, 19 May 2026 05:54:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4170BC2BCB3;
	Tue, 19 May 2026 05:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779170076;
	bh=9GXtTAUKjC8yFJM1OpFqMKYuZGvD2bBJJa3k5I/WQvA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uUM4jbxCjhY6UU6USI1M35xrK4r49GjEOuABe0w9zuIDJL7hrU0NLFTIgS8hnQJ3g
	 B7D9HeIpUNenL6UXDDcIqY3kaOjSBD2wf3d7ULeYYPViaA8dR7vc6RyYwNTDqlL0EE
	 G4+Qgrc8vVyofgDZ5BwaSK+x77YMSgh0+r/Jnb3JPIOE/VxnvCwYmEJ4pMmobtVdhB
	 7Z5drBdHfHPSNGNm83+VQdVZS78JaTTcMxlMss3ASYS56PQC8z4ZtoVqK7jxGaCTnx
	 rlOc+96msoapW8czxnYtZse09ZnPS0hLoywZiZ3TMPq0yXkEaBlLcQFyoaRNIA5rzy
	 IS+7XZlFNXBrw==
Date: Tue, 19 May 2026 11:24:27 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	avri.altman@wdc.com, bvanassche@acm.org, andersson@kernel.org, 
	dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V1 2/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 Document the Hawi UFS controller
Message-ID: <yoh53w5anjjfb6d3zdsh54whlnhkw4lwg3v273qmj74u5k6sp2@vu33qv6dxyas>
References: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
 <20260518165346.1732548-3-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260518165346.1732548-3-palash.kambar@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_225437_449621_10293C2B 
X-CRM114-Status: GOOD (  12.69  )
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

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMTA6MjM6NDVQTSArMDUzMCwgcGFsYXNoLmthbWJhckBv
c3MucXVhbGNvbW0uY29tIHdyb3RlOgo+IEZyb206IFBhbGFzaCBLYW1iYXIgPHBhbGFzaC5rYW1i
YXJAb3NzLnF1YWxjb21tLmNvbT4KPiAKClN1YmplY3QgaXMgd3JvbmcuIEl0IHNob3VsZCBiZToK
CnNjc2k6IHVmczogcWNvbTogZHQtYmluZGluZ3M6CgotIE1hbmkKCj4gRG9jdW1lbnQgdGhlIFVG
UyBDb250cm9sbGVyIG9uIHRoZSBIYXdpIFBsYXRmb3JtLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBh
bGFzaCBLYW1iYXIgPHBhbGFzaC5rYW1iYXJAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11ZnNoYy55YW1s
IHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSxzbTg2NTAtdWZz
aGMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSxzbTg2
NTAtdWZzaGMueWFtbAo+IGluZGV4IGYyODY0MWM2ZTY4Zi4uM2RlMDBhZmZhNGM2IDEwMDY0NAo+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSxzbTg2NTAt
dWZzaGMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMv
cWNvbSxzbTg2NTAtdWZzaGMueWFtbAo+IEBAIC0xNiw2ICsxNiw3IEBAIHNlbGVjdDoKPiAgICAg
ICAgY29udGFpbnM6Cj4gICAgICAgICAgZW51bToKPiAgICAgICAgICAgIC0gcWNvbSxlbGl6YS11
ZnNoYwo+ICsgICAgICAgICAgLSBxY29tLGhhd2ktdWZzaGMKPiAgICAgICAgICAgIC0gcWNvbSxr
YWFuYXBhbGktdWZzaGMKPiAgICAgICAgICAgIC0gcWNvbSxzbTg2NTAtdWZzaGMKPiAgICAgICAg
ICAgIC0gcWNvbSxzbTg3NTAtdWZzaGMKPiBAQCAtMjcsNiArMjgsNyBAQCBwcm9wZXJ0aWVzOgo+
ICAgICAgaXRlbXM6Cj4gICAgICAgIC0gZW51bToKPiAgICAgICAgICAgIC0gcWNvbSxlbGl6YS11
ZnNoYwo+ICsgICAgICAgICAgLSBxY29tLGhhd2ktdWZzaGMKPiAgICAgICAgICAgIC0gcWNvbSxr
YWFuYXBhbGktdWZzaGMKPiAgICAgICAgICAgIC0gcWNvbSxzbTg2NTAtdWZzaGMKPiAgICAgICAg
ICAgIC0gcWNvbSxzbTg3NTAtdWZzaGMKPiAtLSAKPiAyLjM0LjEKPiAKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
