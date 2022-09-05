Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64D06ECAAD3
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 17:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfdnfdkk6itHfYZPFQUZWTOZNR97NTdPNAXsJgTi8Nw=; b=USp3TYmZVbrfOD
	2vVSO06EPXwoLIVzu9c2wEbq1/hhKGwTgBftT8kx3kF98xT1P7mFd5mqNEjnAUvUe2GdzR/ugClLh
	WD6htDJOEJGiPX4HVNPZXgPN9Bhl6JFeqV/NwTOKQvpUerLX5lphCs2pG+qim3IJ40ZFnRzT7wet4
	Hs2hoYJsYmPjtwddh65oYZu5uO1fDvnAtHcbxw72pAxmRXgLrKmSqYYsrbdX3KRiZJ0l6UXNV4Wy7
	yK6UewBpmFBcvLTS0y0NaVsHttS099eCnTGS+lry0/5aDC9V2YDEz1ERHxP33t5+wybcKiqpTQnVA
	rSTtr8FxcGQ0OXX1klSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVFb5-007HzW-HZ; Mon, 05 Sep 2022 17:09:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVDHh-004dS6-KZ
	for linux-phy@bombadil.infradead.org; Mon, 05 Sep 2022 14:41:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Xjntc2AfAa7LH2mZzo3Dm0+FjCcuwhKdwm+QALzo8JI=; b=P8oM24HnoudpTyrk1WIdkm/9Oa
	BAqw7mVlmldOjzpT6DiWoRF8ogDQObs+vXa1FLL4rs7HkIT+Fi2Mc+WJ4KUkoYCVLxf/Pm0sA/Gjd
	2V1eOH2zKbxOLOFTkv+1F3o6zHfrcCwg/cS6TU34KTxjowGQek8W+CdTFLpa1/sMvXgs4QpONiurb
	l3AYAuQq8T8r/CRi60oP0mVm/Smw1x0ZLRGCSu47OXwiNhu9//TdjUyUOAvHLZXjsuBf5uAiHcVRa
	87H4k1LD2Ofc7yx7DsgURxMShheWhiEdBbnt0BzDtOBIyPKQTkS5X8lwPKQ0lzpwVHJnaFshN1KuU
	vraZLK1g==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVDHe-009iUR-A1
	for linux-phy@lists.infradead.org; Mon, 05 Sep 2022 14:41:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D00FAB811E7;
	Mon,  5 Sep 2022 14:41:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ED9FC433C1;
	Mon,  5 Sep 2022 14:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662388860;
	bh=z+kDqX33jrhb82AEByjlMWgt9j5tQ/K93wDMIdLY0mM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j/R6CPVXbZ7n/nvdrNybUQZdtuWGiton1smrVIscsz0hP6ijQssCTe6D73mN16x8A
	 EzASL50uSnvu05vKJoTJdMPiHpsuqqZRjSHQY9ue4DmQ7Iqu2WYI9SIJiWJ3zi4v21
	 mpD5474tGpsZ5SnjJEAHkG+48eLfSfh7BPk5lrOJShjTLR2HR08oMu/emGvgj/QyEQ
	 K99/VWGRJXK05CbssvXcDR5zEFkFDlUm8uUNRqqjw3r50iGm6x7QiGIwEWAA3gRahs
	 bW5mGiO4OgBlZIUCJ+OkSxpF9DN5Md2KoM/no5AibRJccrLAJ86fw50oIDFuDbO0s3
	 RILL0rqcVOR2Q==
Date: Mon, 5 Sep 2022 15:40:49 +0100
From: Lee Jones <lee@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yu Chen <chenyu56@huawei.com>,
	Binghui Wang <wangbinghui@hisilicon.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH 4/4] dt-bindings: mfd: syscon: require specific
 compatible also for simple-mfd
Message-ID: <YxYKcTavYef/ByKe@google.com>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
 <20220817142246.828762-5-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817142246.828762-5-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_154106_469872_E04A2010 
X-CRM114-Status: GOOD (  11.41  )
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

T24gV2VkLCAxNyBBdWcgMjAyMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKCj4gVGhlIHN5
c2NvbiBiaW5kaW5ncyByZXF1aXJlIGEgZGV2aWNlIHNwZWNpZmljIGNvbXBhdGlibGUsIGJlc2lk
ZSB0aGUKPiAic3lzY29uIi4gIEhvd2V2ZXIgc2NoZW1hIGNvdW50cyAic2ltcGxlLW1mZCIgYXMg
c3VjaCwgd2hpY2ggYWxsb3dzCj4gc2ltcGxlLW1mZCtzeXNjb24gdG8gc25lYWsgaW4uCj4gCj4g
QWRqdXN0IHRoZSBtYXRjaCB0byBiZSBzdXJlIHNpbXBsZS1tZmQgYWxzbyBjb21lcyB3aXRoIGEg
ZGV2aWNlIHNwZWNpZmljCj4gY29tcGF0aWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4gLS0tCj4gIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwgfCAxNCArKysr
KysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
