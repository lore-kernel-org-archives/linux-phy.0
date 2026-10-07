Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1D3ECA6007
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 15:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1VKAWdgYQpgVJy7Evx7YH0zTczWi6kKgUoBBaWmSl4=; b=vK9nhmrGmcqpJj
	JaLAZZ25dP644dOxw+c+iflmG2V3D9XMGG0O8wriAhxUdEV5eab7KZB+jLVpIGo4XZDWtNEF9hshi
	7/i1NmEGSQn1pdQHmbvKfiCHWHoqo/jht/rYdEwKuc8P5O8gKlIPQ73DanjcJrYGrLE19srBYkSQu
	M4Tb/vQZKWRUwki/dhqZVwoui+dKc1lPmO3popdQwwekKpoTA/8zVlFZDdZ9OV95+uTGvmLES2y8u
	YfuMR7vF54sF6tPxPNDfBzVOCUNj1+abdodJoyrMyw6ddRmxBp59VYp1dgoE9QDe1CrZqV6L92mge
	EniEJ9TeuwrcMOoRzCjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETVr-00000002hc3-09Vr;
	Wed, 07 Oct 2026 15:24:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xETVp-00000002hbx-2nMQ
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 15:24:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 117E743CAF;
	Wed,  7 Oct 2026 15:24:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02E2B1F00893;
	Wed,  7 Oct 2026 15:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791386696;
	bh=GHllO92g1vA1pv14+lQkMeSzcxTrttTJ0MK9bMISjS0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TqWmrQ4Dn5Vq6CnlziApxUMqEO4zhFe34TG5UeJsq7MI8o9V27RlofEEofV64fLZY
	 HwsjkMntw6uPPetd/SwL0ZWh9WE+OADo5+U24rmD7Zw9OpCVdphwWMjPNBfkx2JDEf
	 U96DNhnWlpIj1+xQeJe78nklJ4LN272jWO3xMynhdTzELkipBnJ9mERD4nBoWIk6bq
	 MLNfpBut0Zb5KvPZJMzjBMoT3zurUiDA86LYJzvDLUKancO0JSyYaJxtyU+v17x18j
	 v03bikJdwIn0siyZCSh6+DX7JWXdOT80G/NXCS53AxQ0V1Guopr0M8MYfqz/tMrV5A
	 QcqTmCzP3+Q+A==
Date: Wed, 7 Oct 2026 17:24:48 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@sandisk.com>, 
	Bart Van Assche <bvanassche@acm.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com, 
	Abel Vesa <abel.vesa@oss.qualcomm.com>, Abel Vesa <abelvesa@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com, 
	Taniya Das <taniya.das@oss.qualcomm.com>, "Martin K. Petersen" <mkp@kernel.org>
Subject: Re: [PATCH v3 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur UFS
 controller
Message-ID: <c2b6taguiyyeteizf5ohdsvmeyaybbs5pm5cuv5vqkklswmxv5@5ekurkmzdhjt>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
 <20261007-glymur_ufs_qcb_enablement-v3-2-84cf4f861415@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261007-glymur_ufs_qcb_enablement-v3-2-84cf4f861415@oss.qualcomm.com>
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

T24gV2VkLCBPY3QgMDcsIDIwMjYgYXQgMTE6NTk6MzVBTSArMDUzMCwgUHJhZGVlcCBQIFYgSyB3
cm90ZToKPiBEb2N1bWVudCBVRlMgSG9zdCBDb250cm9sbGVyIG9uIEdseW11ciBTb0MuIEdseW11
ciBVRlNIQyBoYXMgYQo+IG11bHRpLXF1ZXVlIGNvbW1hbmQgKE1DUSkgcmVnaXN0ZXIgcmFuZ2Ug
aW4gYWRkaXRpb24gdG8gdGhlIHN0YW5kYXJkCj4gb25lLiBTbywgYm90aCByZWcgZW50cmllcyBh
cmUgcmVxdWlyZWQuCj4gCj4gQWNrZWQtYnk6IE1hcnRpbiBLLiBQZXRlcnNlbiA8bWtwQGtlcm5l
bC5vcmc+CgpUaGlzIHdhcyBhIG1pc3Rha2UuIFlvdSBjbHViYmVkIGJvdGggVUZTIGNvbnRyb2xs
ZXIgYW5kIFBIWSBwYXRjaGVzIGluIGEgc2luZ2xlCnNlcmllcyBhbmQgdGhlIFVGUyBtYWludGFp
bmVyIGVuZGVkIHVwIGFja2luZyB0aGUgcGF0Y2ggYXNzdW1pbmcgZGVwZW5kZW5jeQppbnN0ZWFk
IG9mIG1lcmdpbmcgdGhlIHBhdGNoLgoKUGxlYXNlIHNlbmQgdGhlIFBIWSBhbmQgY29udHJvbGxl
ciBwYXRjaGVzIHNlcGFyYXRlbHkuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
