Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43D2C77B60
	for <linux-phy@archiver.kernel.org>; Wed, 26 Apr 2023 12:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+kWubVmH5wYEiOl3exQtH640iOgHV5J5ptdVOgnD/c=; b=fza1S7h57a0t0D
	rbabroAMicbEj+J0ZPWjGKKBuevctUlBNCSM2dwnzJLlpiTFgtTP5jyb5TynDPsvvToT6PRbZURvt
	wl/6n0swNvTTEjphkXwNMFAak5HGdt+7uPqgkM7rMctdRdj1Yp1e0gjrZh+X9jog2GgqyGM+TggdM
	4a6vf2eXr8RKwTRzvsfYrWtb3GVAze3ZGZBRBQRa3YfalTi3HR8oXRT5iOY2RRbDQY0BG+5ikEHof
	9gEf93TMy1U5HpyF9nqUWYYHM+oN1gB8y6MZqSmvN8nGNuHPTDG/d6lKdU+peRwZBNv4JaDn03tIA
	6maFKnYcQQ5d96tM0FMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prduV-003rNv-1W;
	Wed, 26 Apr 2023 12:06:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prduR-003rMR-2b
	for linux-phy@lists.infradead.org;
	Wed, 26 Apr 2023 12:06:09 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33QAq4XQ028089;
	Wed, 26 Apr 2023 12:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Z2jHxQbkgWifyzS7It9g20bYYdz3itj1DvYyz0UFD2w=;
 b=cwKoDA6wwWge/jJD6apwLlcxzvcVXqmBSaqDdbtuk+R7YPLS2U5mMlSJrxodhsfYcjYr
 r3f9vrbsbQe22vES5eI0wiP89EyqnsS6/NqzvLgYMfLEI40MKEX/saeMT0xCtBPEEFNn
 iLC1cWRWSRWCCvaJorgigbijWd5mV+2T/f1WeuX3nMc93dfpUWdCz+KPeGray7SvJ/oU
 aa8Cat/Qi9g6yzcvrNFx60T4zdHXAJsDMWdHdKIwcvzU3WNgn1Ks/LvZlbaVMRMsX7iq
 c23RcOn+G+jiTFfR75Do7oUqs7eDQKaBMNxrCnSQLp3LiL+4VT+nwmHN80rs2GtJZvwH SA== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q6rk0sfsa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Apr 2023 12:05:56 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33QC5t6n001527
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Apr 2023 12:05:55 GMT
Received: from [10.218.19.109] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Wed, 26 Apr
 2023 05:05:50 -0700
Message-ID: <f051bfe8-e612-f54e-7729-7816591fa21c@quicinc.com>
Date: Wed, 26 Apr 2023 17:35:40 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
To: Adrien Thierry <athierry@redhat.com>
CC: <agross@kernel.org>, <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <ZEcEGJiikEC2wIVE@fedora>
Content-Language: en-US
From: Shazad Hussain <quic_shazhuss@quicinc.com>
In-Reply-To: <ZEcEGJiikEC2wIVE@fedora>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: cp0MOlgnQ56BPstlgv_si6hnHIMqXW7n
X-Proofpoint-ORIG-GUID: cp0MOlgnQ56BPstlgv_si6hnHIMqXW7n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-26_04,2023-04-26_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 clxscore=1011 spamscore=0 mlxlogscore=604 lowpriorityscore=0 mlxscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2304260108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_050607_856250_C8FBB96C 
X-CRM114-Status: GOOD (  23.88  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Adrien,

On 4/25/2023 4:05 AM, Adrien Thierry wrote:
> Hi Shazad,
> 
> On Fri, Apr 21, 2023 at 07:09:15PM +0530, Shazad Hussain wrote:
>> Update relavent DT bindings for USB, add new config to the phy driver,
>> add USB and PHY nodes to the .dtsi and enable them in the board .dts
>> for the sa8775p-ride platform.
>>
>> Shazad Hussain (6):
>>    dt-bindings: usb: qcom,dwc3: Add bindings for SA8775P
>>    dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for SA8775P
>>    dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add SA8775P USB PHY
>>      binding
>>    phy: qcom-qmp: Add SA8775P USB3 UNI phy
>>    arm64: dts: qcom: sa8775p: add USB nodes
>>    arm64: dts: qcom: sa8775p-ride: enable USB nodes
>>
>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   1 +
>>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |   1 +
>>   .../devicetree/bindings/usb/qcom,dwc3.yaml    |   5 +
>>   arch/arm64/boot/dts/qcom/sa8775p-ride.dts     |  92 +++++++
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 239 +++++++++++++++++-
>>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  45 ++++
>>   6 files changed, 381 insertions(+), 2 deletions(-)
>>
>> -- 
>> 2.17.1
>>
> 
> Thanks for posting this. I tested the series on the sa8775p, and it seems
> initialization for the controller at a400000 sometimes fails with a
> timeout (-110) error:
> 
>      dwc3 a400000.usb: Adding to iommu group 2
>      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
>      xhci-hcd xhci-hcd.0.auto: can't setup: -110
>      xhci-hcd xhci-hcd.0.auto: USB bus 1 deregistered
>      xhci-hcd: probe of xhci-hcd.0.auto failed with error -110
>      dwc3 a600000.usb: Adding to iommu group 3
>      dwc3 a800000.usb: Adding to iommu group 4
>      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 1
>      xhci-hcd xhci-hcd.1.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
>      xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a800000
>      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 2
>      xhci-hcd xhci-hcd.1.auto: Host supports USB 3.1 Enhanced SuperSpeed
>      hub 1-0:1.0: USB hub found
>      hub 1-0:1.0: 1 port detected
>      usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
>      hub 2-0:1.0: USB hub found
>      hub 2-0:1.0: 1 port detected
> 
> In this case, only usb devices for a800000 are showing:
> 
>      dracut:/# ls -alh /sys/bus/usb/devices
>      total 0
>      drwxr-xr-x 2 root root 0 Feb 27 00:00 .
>      drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1/1-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2/2-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb1
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/usb2
> 
> This happens approximately 1 out of 2 reboots. Here's the kernel output
> when initialization succeeds:
> 
>      dwc3 a600000.usb: Adding to iommu group 2
>      dwc3 a800000.usb: Adding to iommu group 3
>      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
>      xhci-hcd xhci-hcd.0.auto: hcc params 0x0110ffc5 hci version 0x110 quirks 0x0000000000010010
>      xhci-hcd xhci-hcd.0.auto: irq 161, io mem 0x0a800000
>      xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
>      xhci-hcd xhci-hcd.0.auto: Host supports USB 3.1 Enhanced SuperSpeed
>      hub 1-0:1.0: USB hub found
>      hub 1-0:1.0: 1 port detected
>      usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
>      hub 2-0:1.0: USB hub found
>      hub 2-0:1.0: 1 port detected
>      dwc3 a400000.usb: Adding to iommu group 4
>      xhci-hcd xhci-hcd.1.auto: xHCI Host Controller
>      xhci-hcd xhci-hcd.1.auto: new USB bus registered, assigned bus number 3
>      xhci-hcd xhci-hcd.1.auto: USB3 root hub has no ports
>      xhci-hcd xhci-hcd.1.auto: hcc params 0x0220fe65 hci version 0x110 quirks 0x0000000000010010
>      xhci-hcd xhci-hcd.1.auto: irq 162, io mem 0x0a400000
>      hub 3-0:1.0: USB hub found
>      hub 3-0:1.0: 1 port detected
> 
> And the list of usb devices:
> 
>      dracut:/# ls -alh /sys/bus/usb/devices
>      total 0
>      drwxr-xr-x 2 root root 0 Feb 27 00:00 .
>      drwxr-xr-x 4 root root 0 Feb 27 00:00 ..
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 1-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1/1-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 2-0:1.0 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2/2-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 3-0:1.0 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3/3-0:1.0
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb1 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb1
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb2 -> ../../../devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.0.auto/usb2
>      lrwxrwxrwx 1 root root 0 Feb 27 00:00 usb3 -> ../../../devices/platform/soc@0/a4f8800.usb/a400000.usb/xhci-hcd.1.auto/usb3
> 
> Have you also encountered this?
> 

I did try 10 reboots and did not encounter this issue on my setup tough.

> Best,
> 
> Adrien
> 

---
-Shazad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
