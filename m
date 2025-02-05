Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA06C02192
	for <linux-phy@archiver.kernel.org>; Wed,  5 Feb 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uAuzHXA4KLU0zGX3abraQl6MHL71fQhROssGhD0ERY=; b=y+5rvx+/DWBCiu
	IykjojgWYnMMbnLlMPrDxBGwNJ81XLeEWOnLVD0QUGfR1/bR064/rMsYbQ8RedFSh0s7gyh72HgFS
	1SCyqBurea2eC1QORnKFiioTIX+3c9c3Gwlqiz/zEf2I8TRSrS57pJplZqs6+NAbaie4OcX0lxkIX
	VuD76USRd52fC87+W8fwYlvcENjBmqkxSZq0gr9D9eQnKA5IQjJb3OY0xd3k9Rtx/89spkqR/Slx4
	WA84xOeHr3WToz7AxtC8ZiYhO8spYzOPe1otLCwSmpWC6uplKIeT3iJmZcODxt40OjnOrmWypcJLU
	ZY31Gg1ISE+lWXS9F0vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfd1Y-00000002xEj-3GDd;
	Wed, 05 Feb 2025 10:52:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfcz9-00000002wmL-1DSV
	for linux-phy@lists.infradead.org;
	Wed, 05 Feb 2025 10:50:24 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5157Fqqd009879;
	Wed, 5 Feb 2025 10:49:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yV+6qkgECPgWR+utpQPN2P2B
	yvpRL9hXJCZEqEup5Oo=; b=lTZ/NSfYhOQuFdRwxhrSwxLFb7Y+cSUcv+tccBJt
	vZN+xZKwUOAOU2uoCE6n80d+SoWXVpCPXCRv4eJ16smyD8y4pDwqzByfd6i0jbUe
	UA3rWJr6OkVzdeg9ivJzF97Vj1mPWiUXggpGNMZFeFojdKQeWL+g+eURclrLzyRr
	wlGKdYkErD2VVbqYPidtvbEo6X3PUaz8b2AMYcgnideeokrbpus8d6u8otDpl4uV
	t3ZUS/EZqSzwoBtn6O3a71uGedqwhgteILb7vKkY9DoNSasqnmQ0dK03nJHAOum+
	62aVzeMFBpE6F258uvDWymMpOZjrAQ956RJEq0To5GqvNg==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44m3esgfwa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Feb 2025 10:49:57 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 515Ant15000760
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Feb 2025 10:49:55 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 5 Feb 2025 02:49:39 -0800
Date: Wed, 5 Feb 2025 16:19:46 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v9 6/7] arm64: dts: qcom: ipq5332: Add PCIe related nodes
Message-ID: <Z6NCSo98YRgG666Q@hu-varada-blr.qualcomm.com>
References: <20250128062708.573662-1-quic_varada@quicinc.com>
 <20250128062708.573662-7-quic_varada@quicinc.com>
 <cc1c34f0-0737-469d-a826-2df7f29f6cf3@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc1c34f0-0737-469d-a826-2df7f29f6cf3@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: LqkeP6FXi5Jc7zuveJvZcqUkz1DwPpMb
X-Proofpoint-ORIG-GUID: LqkeP6FXi5Jc7zuveJvZcqUkz1DwPpMb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-05_04,2025-02-05_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 priorityscore=1501 mlxscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502050086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_025023_458581_849E6B52 
X-CRM114-Status: GOOD (  19.86  )
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

On Mon, Feb 03, 2025 at 05:30:32PM +0100, Krzysztof Kozlowski wrote:
> On 28/01/2025 07:27, Varadarajan Narayanan wrote:
> >
> > @@ -479,6 +519,230 @@ frame@b128000 {
> >  				status = "disabled";
> >  			};
> >  		};
> > +
> > +		pcie1: pcie@18000000 {
> > +			compatible = "qcom,pcie-ipq5332", "qcom,pcie-ipq9574";
> > +			reg = <0x00088000 0x3000>,
>
> So as Konrad pointed out now, this was never tested. It's not we who
> should run tests for you. It's you.

This was tested and it did not flag an error since it is having the order
specified in the bindings. qcom,pcie.yaml has 4 reg specifications. Two of
them have 'dbi' as the first register space and two of them have 'parf' as
the first register space. Looks like the constraints with 'dbi' as the
first entry will match with pcie@xxx and the ones with 'parf' won't match.

Since IPQ5332 follows the constraints specified for sdx55 which has 'parf'
as the first entry it is not able to match with pcie@xxx value.

The initial version that was posted has the first 'reg' entry matching with
pcie@xxx (please see [1]), since it used the ipq9574 reg constraints. Based
on the feedback received [2], had to add 'mhi' area also. Since adding
'mhi' to ipq9574 would result in duplication of the sdx55 reg constraints,
ipq5332 followed sdx55's constraints resulting in the reg entries getting
reordered and the first reg entry vs pcie@xxx mismatch happened.

To resolve this, shall I reorder the sdx55 reg bindings (and the affected
DTS arch/arm/boot/dts/qcom/qcom-sdx55.dtsi). Please let me know.

1 - https://lore.kernel.org/linux-arm-msm/20241204113329.3195627-6-quic_varada@quicinc.com/
2 - https://lore.kernel.org/linux-arm-msm/6fe09de4-c94c-495d-92a4-aa902d2519ef@oss.qualcomm.com/

> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
> for instructions).
> Maybe you need to update your dtschema and yamllint. Don't rely on
> distro packages for dtschema and be sure you are using the latest
> released dtschema.

I run the following tests before posting the patches and go through the
output to see if the nodes I added/changed have any errors or if other dtbs
have been impacted by my bindings changes.

	export ARCH=arm64
	export W=1
	export DT_CHECKER_FLAGS='-v -m'
	export DT_SCHEMA_FILES=qcom
	export CHECK_DTBS=y

	pip3 install dtschema --upgrade

	make -j 16 dt_binding_check

	make -j 16 dtbs_check

	$ pip show dtschema | grep Version
	Version: 2024.11

Please let me know if I should add anything else to ensure my setup is up
to speed.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
