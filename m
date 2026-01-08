Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5ADCD1489D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 05:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viK0KZFwHtJcTeuPqNaQuGUhByON3iY8QWgzYFVdBYc=; b=sg33VP8nZforFZ
	kvnH8rcGJmD2RmwU1cP3PowxiVXrQavYoo54s8vVDNbCD3C5jh/XdwpJaL3EJRDKboPtC9aLc+t94
	GwPb7lx5ddwK0zh66zqSCZbxNN/cI7/SXI9CXj3MkhMKvvZ6Fd2GOmlYuj7TL2JOfQg3mawtaNH6m
	p7mKjNGnjQ/GjFViwPJah/meHfJWF9/Yh/Pz4KWA7V0WSer4+4Icq5Y/yesvycj1kkdir9T44D1D+
	MtOqph6J3IGWJN2PyZNMMnvuM2TMd6WByhfcJFS/YIPKKghd6QSCzBp8cr0OlfGP6+/SHwAGy/RI/
	4AKAbd8sN8+Cf/cL0S5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdiX5-0000000Fws2-2uAI;
	Thu, 08 Jan 2026 05:26:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdiX0-0000000FwqY-2vI5
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 05:26:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E6D694177F;
	Thu,  8 Jan 2026 05:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47F50C116C6;
	Thu,  8 Jan 2026 05:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767849957;
	bh=8LVRptukR+PpACKCN4cRnyQ4lwp2cVIdpaJmp3sdxTM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BTG6592DCIMQuDAHCJR0R+q2l0EhBz+e+4FgZ3vs7krISMIIW1WqyCWDt7J3nWL/j
	 qqeivw9vSkl6im6GR7E5KaKVdX6DA4HX9bpqD4eE3hSbuFzAFV0iWho97nbBPFhAKQ
	 eQx3V78pPiUsAQPQ7t9wqnm722ewZzzzuqfRRKHGUUPZFbbtF4Be6wdkfPZZnXdp4N
	 kAUW7FfZuVoS0VbnSb3IN1qEa3+CuEnSxqEBc9Mk9U67wHExAdVOJJsi/FILiFAgGE
	 +jbfHMjVCv93RQVpK9MwVTC1GHTfqcTfcXJRq88EK3FAgMHzRbZ+U5BR6LnFC35YhS
	 W3UXRqdqVdw4w==
Date: Thu, 8 Jan 2026 10:55:48 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com, 
	andersson@kernel.org, konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V4 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
Message-ID: <xmhyuq37jbh5chovbdqhci36j24pzmleu2mo2msax5j4vs5ol6@65r57zt4cvqb>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260106154207.1871487-5-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260106154207.1871487-5-pradeep.pragallapati@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_212559_761914_708D3932 
X-CRM114-Status: GOOD (  11.42  )
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

T24gVHVlLCBKYW4gMDYsIDIwMjYgYXQgMDk6MTI6MDdQTSArMDUzMCwgUHJhZGVlcCBQIFYgSyB3
cm90ZToKPiBFbmFibGUgVUZTIGZvciBIQU1PQS1JT1QtRVZLIGJvYXJkLgo+IAo+IFJldmlld2Vk
LWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogUHJhZGVlcCBQIFYgSyA8cHJhZGVlcC5wcmFnYWxsYXBhdGlAb3NzLnF1YWxj
b21tLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVs
Lm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbW9hLWlv
dC1ldmsuZHRzIHwgMTggKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9o
YW1vYS1pb3QtZXZrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1vYS1pb3QtZXZr
LmR0cwo+IGluZGV4IDg4ZTNlN2JlZDk5OC4uMjNjZDkxM2IwNWY1IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1vYS1pb3QtZXZrLmR0cwo+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9oYW1vYS1pb3QtZXZrLmR0cwo+IEBAIC0xMjUzLDYgKzEyNTMsMjQg
QEAgJnVhcnQyMSB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gIAo+ICsmdWZzX21lbV9w
aHkgewo+ICsJdmRkYS1waHktc3VwcGx5ID0gPCZ2cmVnX2wzaV8wcDg+Owo+ICsJdmRkYS1wbGwt
c3VwcGx5ID0gPCZ2cmVnX2wzZV8xcDI+Owo+ICsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsK
PiArCj4gKyZ1ZnNfbWVtX2hjIHsKPiArCXJlc2V0LWdwaW9zID0gPCZ0bG1tIDIzOCBHUElPX0FD
VElWRV9MT1c+Owo+ICsKPiArCXZjYy1zdXBwbHkgPSA8JnZyZWdfbDE3Yl8ycDU+Owo+ICsJdmNj
LW1heC1taWNyb2FtcCA9IDwxMzAwMDAwPjsKPiArCXZjY3Etc3VwcGx5ID0gPCZ2cmVnX2wyaV8x
cDI+Owo+ICsJdmNjcS1tYXgtbWljcm9hbXAgPSA8MTIwMDAwMD47Cj4gKwo+ICsJc3RhdHVzID0g
Im9rYXkiOwo+ICt9Owo+ICsKPiAgJnVzYl8xX3NzMF9kd2MzX2hzIHsKPiAgCXJlbW90ZS1lbmRw
b2ludCA9IDwmcG1pY19nbGlua19zczBfaHNfaW4+Owo+ICB9Owo+IC0tIAo+IDIuMzQuMQo+IAoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
