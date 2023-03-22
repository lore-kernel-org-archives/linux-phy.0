Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43BE6C6FD1F
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 06:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6unnGY9OEayLFBkDmcbBgaCWNTteac/hyLqJE5TEjj4=; b=ys8s2R+HzsyBjc
	DSSW7ckApGyKmYzxn9e6qdSLeuk17QH3/3RW6LrBVWsoEgC0ks8ejN3MekUXd3EFU0CAIz2iDxCyn
	O/9wlv8qVY+hXejjJ0o7ml//xG7eceKETg9AWyqwDcf8+S+BnoOfZ1DZ7Hm4w+q/djfjX0YMFo+Qe
	Gwvn3X1FhUMiL6DaXBAv07ynJvlwnquiyJ+hz0ZoDLeEvfAHWZA9WNSLG8YFdjKtInekVV93GPCge
	TgKmw1RbMto/ctgQ9K6tKWWQ5a9bTCsncbJ+N/mL24y04eMQ5xF0oxpmVfzeODwmIzU6lKu1zp3/2
	ei0QoSinV7T57Lw+Zoiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peroW-00ErIU-2r;
	Wed, 22 Mar 2023 06:19:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peroT-00ErHq-2M
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 06:19:11 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32M5ODN6017443;
	Wed, 22 Mar 2023 06:19:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=xi1R7lRkXD/lKHVkZ4mgBjQ8EbAACSsqoT+12EbXACg=;
 b=YbR8X4R60yAbBUwNcp4AyJtjm1PbDDOVcJe99BDVV1XUveuGn1MoKClGYJt5temubV0p
 8NtcvUMieBjZISwPKQTmbex6EVQ4vwk2FWiEM9cjkvz1V8drXfv0hWUlK6eYKsbl7ZG4
 VBIj/6N+HEykKKW+xC5iYS4ttJTntZBir/dlJ+xUcQdgnVmBP51IRUpS9KkQBhmBfY+I
 XIczPyWim0UitKqRAxUmzxL57loEDoExibmq0tMKXV2FhOPc9pDCoZEjhULQQof9x1Nf
 UTbYTXN2J42QqlQyHvJHhoxCP+cKnNvWSFOk9GAxMjKUpsW/e9Hz2zbk67kRo5m8Yf1M Hg== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pfhnx19vr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Mar 2023 06:19:05 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32M6J4XK002105
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Mar 2023 06:19:04 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Tue, 21 Mar 2023 23:18:59 -0700
Date: Wed, 22 Mar 2023 11:48:55 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v2 0/8] Enable IPQ9754 USB
Message-ID: <20230322061854.GD12808@varda-linux.qualcomm.com>
References: <cover.1677749625.git.quic_varada@quicinc.com>
 <cover.1679388632.git.quic_varada@quicinc.com>
 <1cb44e37-9881-3c71-816f-a492c917c494@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1cb44e37-9881-3c71-816f-a492c917c494@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: RJQHagLzEj7Q8rT-BYhg-wMBxa2Aig2W
X-Proofpoint-ORIG-GUID: RJQHagLzEj7Q8rT-BYhg-wMBxa2Aig2W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-21_11,2023-03-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 adultscore=0 mlxlogscore=631
 lowpriorityscore=0 impostorscore=0 clxscore=1015 phishscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303150002 definitions=main-2303220044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_231909_913877_AA3835DA 
X-CRM114-Status: GOOD (  21.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Mar 21, 2023 at 12:53:41PM +0100, Konrad Dybcio wrote:
>
>
> On 21.03.2023 09:54, Varadarajan Narayanan wrote:
> > This patch series adds the relevant phy and controller
> > configurations for enabling USB on IPQ9754
> I got this as a reply to the v1 thread. Please don't do that
> and send it as a new mail thread the next time around.
>
> Konrad

Sorry. Will take care next time.

Thanks
Varada

> >
> > Depends on:
> > https://lore.kernel.org/all/20230217142030.16012-1-quic_devipriy@quicinc.com/
> >
> > [v2]:
> >         - Incorporated review comments regarding coding styler,
> >           maintaining sorted order of entries and unused phy register
> >           offsets
> >         - Removed NOC clock entries from DT node (will be implemented
> >           later with interconnect support)
> >         - Fixed 'make dtbs_check' errors/warnings
> >
> > [v1]:
> >         https://lore.kernel.org/linux-arm-msm/5dac3aa4-8dc7-f9eb-5cf3-b361efdc9494@linaro.org/T/
> >
> > Varadarajan Narayanan (8):
> >   dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
> >   dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3 PHY
> >   dt-bindings: usb: dwc3: Add IPQ9574 compatible
> >   clk: qcom: gcc-ipq9574: Add USB related clocks
> >   phy: qcom-qusb2: add QUSB2 support for IPQ9574
> >   phy: qcom: qmp: Update IPQ9574 USB Phy initialization Sequence
> >   arm64: dts: qcom: ipq9574: Add USB related nodes
> >   arm64: dts: qcom: ipq9574: Enable USB
> >
> >  .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    |  22 ++++
> >  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |   3 +-
> >  .../devicetree/bindings/usb/qcom,dwc3.yaml         |   1 +
> >  arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts       |  12 +++
> >  arch/arm64/boot/dts/qcom/ipq9574.dtsi              |  86 +++++++++++++++
> >  drivers/clk/qcom/gcc-ipq9574.c                     |  37 +++++++
> >  drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 119 +++++++++++++++++++++
> >  drivers/phy/qualcomm/phy-qcom-qusb2.c              |   3 +
> >  include/dt-bindings/clock/qcom,ipq9574-gcc.h       |   2 +
> >  9 files changed, 284 insertions(+), 1 deletion(-)
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
