Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A6B4C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 04:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZ3OuYek9LrhtyoPks1UwJJ2isaIrUpJRxbXXaCNH0s=; b=HfijypzYKimglk
	or7gZI/IwElDEm4qujQpxUbC9TYwgIEh8QBvmQCPhlDAGMlYato9hWA9kDI9cpzeVaRiR2T0zPIuO
	+KlTRDyXtGl8rfnAWPGARq2Juf7wfqw58Q/csCtaq4p56PrZHaoUwjHCvEdJjMnVvBG0UL0GKmDpP
	Nyp5gI66gTcN2h64DSTnPLwpMPJej+jrzdBKSuZkDRDUmFd0n6mum1vd0mYQLi8PqKL9ZdhRksh3c
	Smmc04PmvsW2gs/TNriiG94of6ssr8qNfTY6jlbn+QwzrgOJtkqEV5puZhapWrBPmNniqW4aNreK4
	MMPFBtU7Y2MaIkm8xAug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue4nx-00000001GIo-0adU;
	Tue, 22 Jul 2025 04:40:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue4nt-00000001GIR-38EW
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 04:40:39 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LIgggN011333
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 04:40:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QcTGOBXUA+STk52mHs0W4PauDtLBRWn0+OXc0q8RYuI=; b=IFc8kYO+nhkzRTcP
	awect8oHXP0U/GDih52NV7CPNIpPNbBkERPbpHB1s61G6FfD2ExRFdytmIh6Q71P
	cMXk28h6Mm4mg+miGb4f4OY9k6RPlw+0mS3zuEYivF5KbJ18HWuBIT5JwHpLw7dF
	07sR39aZLa6RpLhFkaVL+Nw8lYfuWR9BuA3gmlSWG9K4FC+BRHXDY9DMCvm1S580
	++eXtMmjupA7HPhNWcwPvN5ax9uHhudOpouwmbKubs0BI1AZKKYZhmHZPNQxoDiD
	CfTmQ0Vse1I2V/cL974KZXj1rIXm4ag9pKTDYpBJmCQmU9uzvlARyT+8JHLw+W4i
	hHMtQw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480459pk2s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 04:40:36 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-74913385dd8so7203386b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Jul 2025 21:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753159236; x=1753764036;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QcTGOBXUA+STk52mHs0W4PauDtLBRWn0+OXc0q8RYuI=;
        b=j6i4hgeQVQ8l7FYZiu94XPWt6o45rrMHQhwIQFNJYNK2C6DWsnT9lBu/3KAlsGqXcg
         s1bZE/cl4EDTwfjbK25pnBPDCeMm2mMVALCLW21zoKhMBbzEOTfeNTaAeIVOTtvO8Pj8
         6ngWz0p2ptEXWa2Kr4Xm55RELg2lQDCmtECpldjipTs+wAcXucOtDQKjOe0Yj6VIqPjz
         678u+/+CbCDoQ1Mwyfx0G20gKZSvtxPq7OrY8hHy1BR6ciG1Rcj1mgoe9812fPz+WAaD
         +6WD5usigDwoZkU7i9nEI19e/yBOOY3HYo7yqno4SizgiKQfDKLAb/fy8xWzDOcSDWbU
         7iIw==
X-Forwarded-Encrypted: i=1; AJvYcCWVDQVdhc/UWNHvmR0dcewGTtzTOOTHfsYzzOMZbgA0AjMvkBVvXZjwGlHq9BFoC80cAo87NwsEa00=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQV5EIgL1OQmoiXXnwYM73VRJhnpY8AJ7YcX+9RnxYUWlPR9CU
	+8BsMKl8kcGXZdzL8Wl6Z97Suxkloal4Km4aCGDt7QofV+V1FAlO0kA/wqcBXhgrIKxj7rsuBXD
	2ObDfRHS+eVCXZSC+Vrx13Wo7Y2QTjBc2vT+oNOPIagZ4Qi9Khqzr1EjHEhfO86r5zufI
X-Gm-Gg: ASbGncumTDotUbYd3p0XEIbnNyGSb436ll/BdVWE9ydjW2jTCg53I8ZhWKYntI0KwgI
	rFieqtqmKWYwZXpVeTO/i3feLaUmZXHBeLSnfvUNUeWXQm8zt1pqX8zRA2ATJlBhSK1UH3tPNX5
	aaKZ+pmdTXeYiIYwi5F9Tx93F6bXCe0Lol4HcrACuEoMKqPzRadDJfcbswbCzrzBp3vYHhunFy8
	MZsJD+ow85vWHLFePunja+kdcG7s5ePjAV4RmsyMaQerQ0dCyV/Hbu5E/4yagubBEKG0xZ9Tby5
	PZlNtqcqBcyMCueWiXA3lOdu4tYESMKWhkEgsUnmWaxAKOqIYYkpUqCnvNX9M8lKjlWAFIOpC33
	EHtLgS33k5VO2fwqSCA==
X-Received: by 2002:a05:6a00:2189:b0:736:31cf:2590 with SMTP id d2e1a72fcca58-75724876a95mr27257805b3a.16.1753159235230;
        Mon, 21 Jul 2025 21:40:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1twrNaoE58MjndE1bdJRlSy7dI5BpM3+Jd8iUPOsl/CmInJrgSot5/C3EE7tyMWUpjbzqFw==
X-Received: by 2002:a05:6a00:2189:b0:736:31cf:2590 with SMTP id d2e1a72fcca58-75724876a95mr27257748b3a.16.1753159234693;
        Mon, 21 Jul 2025 21:40:34 -0700 (PDT)
Received: from [10.110.120.151] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759c84e20b7sm6725618b3a.28.2025.07.21.21.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 21:40:34 -0700 (PDT)
Message-ID: <0b595166-d3b5-4b01-b8cd-ba9711c88f30@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 12:40:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-4-ziyue.zhang@oss.qualcomm.com>
 <aHobmsHTjyJVUtFj@hovoldconsulting.com>
 <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: A9VNJOeBmwLzjWFeAxDXBHzDBzppGN1l
X-Authority-Analysis: v=2.4 cv=fdyty1QF c=1 sm=1 tr=0 ts=687f1645 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=_GfwqhGknvAR8v4wHWsA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: A9VNJOeBmwLzjWFeAxDXBHzDBzppGN1l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDAzNSBTYWx0ZWRfX21fA1Leu4aAV
 vl8PsYPXSW3oB0b3zWcNFWh5PSAQcaQJXsMGMI4FvO1QNRFCD7smneG3EeT9NWTzxvsbOBTLKsE
 Gfyki2L5xqxU61MtpDflSzDBPuDvu9BQAduaSA+gMQBEqHwcprlTPsMPJlr9XMWQzBuzvG5MRFU
 XocaghjYwuo8UGlFMooTCsIuYndcYetDOCcNKH5owjbV/43M63IeD2JB96E2LkIuVSsgm6XFk7Q
 VRGgfG7IWy60jSyKIghHmwjW5WNiKeA9qg1+FFXNwOqRStmKO98BWkSKtt6nrW/nrluPiY0vsG/
 kJKTuLyMHOAPKHVZIDE2szPR1zGX6ohCVgd9O51vVDrzePnSqkaItjudAW7wT8iZl75ulr9A3Mn
 i6lUsVTIuCA0bCybQhyG/wJ7IE1NU0r2KpQ3O36Znkp7nCFUJm/EQ2meUbStIHGxDnnTukRq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_05,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_214038_060895_B182D6F8 
X-CRM114-Status: GOOD (  20.22  )
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


On 7/18/2025 6:53 PM, Konrad Dybcio wrote:
> On 7/18/25 12:02 PM, Johan Hovold wrote:
>> On Fri, Jul 18, 2025 at 04:17:17PM +0800, Ziyue Zhang wrote:
>>> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
>>> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
>>> replace it with gcc_phy_aux_clk.
>> Expanding on why this is a correct change would be good since this does
>> not yet seem to have been fully resolved:
>>
>> 	https://lore.kernel.org/lkml/98088092-1987-41cc-ab70-c9a5d3fdbb41@oss.qualcomm.com/
> I dug out some deep memories and recalled that _PHY_AUX_CLK was
> necessary on x1e for the Gen4 PHY to initialize properly. This
> can be easily reproduced:
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index a9a7bb676c6f..d5ef6bef2b23 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3312,7 +3312,7 @@ pcie3_phy: phy@1be0000 {
>                          compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy";
>                          reg = <0 0x01be0000 0 0x10000>;
>   
> -                       clocks = <&gcc GCC_PCIE_3_PHY_AUX_CLK>,
> +                       clocks = <&gcc GCC_PCIE_3_AUX_CLK>,
>                                   <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
>                                   <&tcsr TCSR_PCIE_8L_CLKREF_EN>,
>                                   <&gcc GCC_PCIE_3_PHY_RCHNG_CLK>,
>
> ==>
> [    6.967231] qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
> [    6.974462] phy phy-1be0000.phy.0: phy poweron failed --> -110
>
> And the (non-PHY_)AUX_CLK is necessary for at least one of them, as
> removing it causes a crash on boot
>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
