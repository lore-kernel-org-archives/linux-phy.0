Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF8CC43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 13:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NL58jh3aiL8GKx45Zqk64KISRCjwy/76Q0OiAKbElI=; b=iINyGtjLvP6H0Y
	/O2Ec8+0xa0zxTC6z9HUAxC/6qhMNMDoO/zV5vGXC9Li/FEXec3mUBtIQ0sR93pRbbFW7OOavPQmf
	nq6vIQ0Hz455KpPL7XBWwZXwIfohfYT/tpQwtYtpp65MOMWA1h2CqU/ObbQTZS/i+C2fyCKt1z/tG
	BiaFFF8RQzZpN0EkZZIErH1MujwhyhgSG94HU2K2P2BTqXCXa14DMlcrq1LekKymm/VQ0YmddTpG8
	gOcNJTK8MttjzGWKJ5nyawcG+aBSYNJ/2Iw2CajJQziwa7eDhVlLjB8xygitqWtZxKiDumBFG/uFV
	+hUArdp/xEQaJj6fYjsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiB1R-00000004z3v-0HCE;
	Fri, 10 Jul 2026 13:12:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiB1O-00000004z3S-18qw
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 13:12:03 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66AD6lbZ730850
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 13:12:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=esnNNQyitugAKMlaLQidbpw6
	dVtFnR41VBfwzjsJV1U=; b=FpgQS0iWrTSwPiSi8AIob1Ty9Opqu0sY70YTU/KO
	xROVHmnMAd7DcYpaAoRP6MC5VLspCJo2+LMKHqR4X26xGjFOD+0/JqZdyNV905eo
	Ly9ujki0eB6ut62d/1zavw8jpQT1ZNKQ4QSGTHN192acJKqH+t+EK1M3w6NCxZZP
	ofagao00Lvu9XrLc7WT477uo/TLUOWWluR5QCJfgcNP7+cdEhl4NtBO1cERL/Mqh
	fpHjUBn6KNud4My4O7N6mW1R/79BjTPl6AhSc6cp5dppT+/sXa9vN1BGPvFaxAMw
	5M2Yp9YLcVFQzWF4U+e6N/4xBRce4myc9/zYO9/uBVMFPg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4faf24vbtc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 13:12:01 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8484f26852dso1037824b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 06:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783689120; x=1784293920; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=esnNNQyitugAKMlaLQidbpw6dVtFnR41VBfwzjsJV1U=;
        b=fHSKcw/bxK0RTrbbYBXgf5f92rUN5u5uly74tRhfNywW3RBAQ8KqLunrkdSN0YaQ+N
         4e7Hr6mRk+5rlj06tqfFBno0zXiD2uknQ4QbQDHy22CL+5BCVCqBPaYqLT0OMLvi1Bp+
         Im0jAv7RMXwvIbP3C484DsMAECaY5Oxl63rj+J/7Q2CuZJa+2FdfzLSoDKF6YamYCVFR
         eaJr9QNte29+qY2L7t4T/PssUD29a7b65BvFwcXK/t9VJ1uYo0briFvrqzVNAuxJXhn/
         vf0dyk2Oe4st7OBUAmHimnbrLvhyDicaWVB4hxaGYxBnb89YAcPqTLGoz3XK09ch3jlS
         cuSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783689120; x=1784293920;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=esnNNQyitugAKMlaLQidbpw6dVtFnR41VBfwzjsJV1U=;
        b=j9ueFZgUNlsNnZb79rva37WC5iN3Q0fslGPdWWyc9iDIo4ayER9E2YE++8/GF9WotG
         0PVCO7nhD12Sq7lv/0VtIJe/oK6dbycRLZfnTrkJwEC8QfjmLOK8Tely5beHKOmdtIpm
         Hy6EQT+hYXYr77eiglN+iPENKBebwUpvzeWANySS3c1KKZ37zjm9j32H5DRdvyB25nJ5
         DkQtn0FkcfgqMamJ2/4Al1P9zgo1b6CD5uysH3Jb+Ju2LOt91CC8DHNkGe2WMzYVV5AQ
         Pfyk7AF4Swp/vEFh7wKlIF+kjVdlJIrvxOYm896SL2vuiqnb2oyuB0o9X4VsYpssO6rl
         +mHA==
X-Forwarded-Encrypted: i=1; AHgh+RqKxK0Q1iLBc3wAPbDKFtK6Fpr2pJdK+ToNZ9XVmzf7bjptAtmYW7MD7nqADz/bIltqNagkYLykqkc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzTNCrYTdcEfrunDvAHTiZk9rBiSzTamYyHzPbNZ8oQ3APKMyp
	Fw2SWk7mRVj+8x4Z8hXcrAJhXArLcILRHX0oKlbQHanewz938iZE/+dptayA1zu8+8E4rStdR0K
	CAmyB9/Vn+HHnUaZpcxuLsmC/9zleNEdqO8Isn9gLucmXsy6gJ2I8mJdmbSEUjsquQpZA
X-Gm-Gg: AfdE7cm2PeHDkf0xzeOt1ZHRUzd//iYhlhlTxVM3Cg7OGezZ6qsDuIll3eFAxDKJe67
	GTIfz48nFWh1Rdtbglfb9Ofgepon7WVFSfbyziXHb4U0TDKikBVDH9KSSqJKGT1ZoL91dtVUiUX
	TRD8CZkOeTTLoGAm6cFwxZweUJl6uqzDlIdtwz+Xz90dCg8O2eSXT3hmFVxMEMm7CCqLcP1jOfi
	GuCtsNeMjbb9GN+77oTP0CLV/6/G3tdhdrnGilfbMK0fcV7m/KZIGQO1S5uZPA5qxEkUkU2skeW
	SYQPSriWR4yhHjMiDuTaHoFP4Y5HQ6Zqev8asO2eS1BGTqrRw5dSxhj/mYORyQnPj0rmxPxHxyR
	/r1+DLzwy8PGDwxfugsoG58lvlFuQLnWsiBnUt7yas95/plMKIxkCVGCOug==
X-Received: by 2002:a05:6a21:1bc3:b0:3bd:4698:e7c4 with SMTP id adf61e73a8af0-3c0bcb7f146mr12783130637.42.1783689120022;
        Fri, 10 Jul 2026 06:12:00 -0700 (PDT)
X-Received: by 2002:a05:6a21:1bc3:b0:3bd:4698:e7c4 with SMTP id adf61e73a8af0-3c0bcb7f146mr12783097637.42.1783689119556;
        Fri, 10 Jul 2026 06:11:59 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b6593c76dsm41245733c88.3.2026.07.10.06.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 06:11:59 -0700 (PDT)
Date: Fri, 10 Jul 2026 06:11:57 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
Message-ID: <alDvnSiplhEg2yhD@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
 <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
 <akH9LKxqhciznM2x@hu-qianyu-lv.qualcomm.com>
 <ae2e1bdd-59b0-4ff7-bd6f-ddd57267c2d9@oss.qualcomm.com>
 <alBWrK8X7fW+UC7L@hu-qianyu-lv.qualcomm.com>
 <6802dc29-d783-40df-bbb8-8b2dbd94be29@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6802dc29-d783-40df-bbb8-8b2dbd94be29@oss.qualcomm.com>
X-Proofpoint-GUID: Sd9hneEAPvmHq0vRQIPEAQIL2jyp8iu9
X-Proofpoint-ORIG-GUID: Sd9hneEAPvmHq0vRQIPEAQIL2jyp8iu9
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDEzMCBTYWx0ZWRfX4lY7FICgbVO5
 kLLvXUgj0oa7yz07EGOQyvnWS0WPiTQYvNHRZwsYOcq2TKdBd0LMDhoKe6XR2yo7wK9801pXrxe
 SwqoOt9wVOXDNqPJOeoY4cSX2hpdjLQ=
X-Authority-Analysis: v=2.4 cv=daKwG3Xe c=1 sm=1 tr=0 ts=6a50efa1 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=lFNHJFWHrmfUljyRrh4A:9 a=CjuIK1q_8ugA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDEzMCBTYWx0ZWRfXzQs6xJOKh6XB
 CP2GPGVKR5RUI8frLjZVkk6F6xcJKl8i7FINBhpyTYt/v/q+dzoeLL/BUdpbf2AZCFkgmQm3SA3
 5loPrQ96fJisEVYJ+Td/7ik3yHbyskZ/eMCi5XV2CcfZtWlBxz3Wa88RGgQpn0Q4KmIJH6tA14O
 qIAigtU331u5lpe8mNHMBwV3l0rCPhQ07i40GuKZ3kvzkoEmNq7BoH8fXRwZuwH1ar4EBIgDPha
 eQ+Z9vSDe575/6650Eug45wVVeflmlGxDi7bfNyq9xguil9vrtpYdEi7RU0WWAA/libqYFNKGnY
 VgadZe/rJ3YwKy4Qr1kOpsC8P+wtZXbhGPR7WgZnVYtcAQetRJBE1quYIRCzjqOLcx+1zONfCYX
 zqUt3xwWl69n6z5KRlGxS3MKXRCOGAKH/M3dgaChNHZUQ6KHI13OXIvjDEd3JkfY7M1FpUdGbZn
 NBcOwy4P1dVcdjbfsNg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1011 malwarescore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_061202_429973_B232CFA3 
X-CRM114-Status: GOOD (  27.44  )
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

On Fri, Jul 10, 2026 at 10:44:20AM +0200, Konrad Dybcio wrote:
> On 7/10/26 4:19 AM, Qiang Yu wrote:
> > On Mon, Jun 29, 2026 at 11:20:07AM +0200, Konrad Dybcio wrote:
> >> On 6/29/26 7:05 AM, Qiang Yu wrote:
> >>> On Wed, Jun 17, 2026 at 01:19:49PM +0200, Konrad Dybcio wrote:
> >>>> On 5/19/26 7:47 AM, Qiang Yu wrote:
> >>>>> Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
> >>>>> PCIe3b as consumers of that shared PHY provider instead of separate PHY
> >>>>> nodes.
> >>>>>
> >>>>> Update the DTS wiring to:
> >>>>> - point GCC PCIe3A/3B pipe parents to the shared PHY clock outputs
> >>>>> - add PCIe3a controller node and route PCIe3a/PCIe3b port phys to
> >>>>>   &pcie3_phy using two-cell PHY arguments
> >>>>> - configure the shared PHY node with link-mode and dual pipe outputs
> >>>>>
> >>>>> Use QMP_PCIE_GLYMUR_MODE_* dt-binding macros for mode selection.
> >>>>>
> >>>>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>>>> ---
> >>>>
> >>>> [...]
> >>>>
> >>>>> +		pcie3a: pci@1c10000 {
> >>>>> +			device_type = "pci";
> >>>>> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> >>>>> +			reg = <0x0 0x01c10000 0x0 0x3000>,
> >>>>> +			      <0x0 0x70000000 0x0 0xf20>,
> >>>>> +			      <0x0 0x70000f40 0x0 0xa8>,
> >>>>> +			      <0x0 0x70001000 0x0 0x4000>,
> >>>>> +			      <0x0 0x70100000 0x0 0x100000>,
> >>>>> +			      <0x0 0x01c13000 0x0 0x1000>;
> >>>>> +			reg-names = "parf",
> >>>>> +				    "dbi",
> >>>>> +				    "elbi",
> >>>>> +				    "atu",
> >>>>> +				    "config",
> >>>>> +				    "mhi";
> >>>>> +			#address-cells = <3>;
> >>>>> +			#size-cells = <2>;
> >>>>> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x70200000 0x0 0x100000>,
> >>>>> +				 <0x02000000 0x0 0x70000000 0x0 0x70300000 0x0 0x3d00000>,
> >>>>> +				 <0x03000000 0x7 0x00000000 0x7 0x00000000 0x0 0x40000000>,
> >>>>> +				 <0x43000000 0x70 0x00000000 0x70 0x00000000 0x10 0x00000000>;
> >>>>> +
> >>>>> +			bus-range = <0 0xff>;
> >>>>> +
> >>>>> +			dma-coherent;
> >>>>> +
> >>>>> +			linux,pci-domain = <3>;
> >>>>> +			num-lanes = <8>;
> >>>>
> >>>> Is it fine to keep num-lanes 8 here even for configurations with
> >>>> bifurcated PHY?
> >>>>
> >>>> I would assume so, given essentially this is a x8 host, whose 4
> >>>> lanes may simply be effectively NC 
> >>>>
> >>> Actually, on existing platforms, the PCIe3a and PCIe3b controllers are
> >>> never enabled at the same time. When PCIe3a is exposed, it is always in an
> >>> x8 slot. But if we have a x4+x4 platform in future, we can simply override
> >>> num-lanes to 4 in the board.dts.
> >>
> >> My question is whether that will be necessary - if yes, sure, we
> >> can do it, but if not, we can conclude on this early and not have
> >> to fight over it in a couple months
> >>
> > I think we do need to override it in that case. If both PCIe3a and PCIe3b
> > are enabled in x4+x4 mode but PCIe3a keeps num-lanes = <8>, userspace
> > will see an 8-lane slot. If an x8-capable EP is connected to that slot,
> > both ends will advertise x8 support, but the link is up at x4. That looks
> > like a genuine bug from the user's point of view.
> 
> Do we know what's advertised on x86 PCs with bifurcated lanes?
>
On QCB, it advertise x8. On CRD, PCIe3a is hidden.

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
