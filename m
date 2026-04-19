Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0621EA719B
	for <linux-phy@archiver.kernel.org>; Sun, 19 Apr 2026 13:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LY0RF8C0qkxpa10O8GCwlnb9v+fW04GOna1nAm4XdkE=; b=eqpzmZHFAOWSp/
	kApM2KAflo3xouk+vlI4MHkAfgRXansF/m79mJ4TIeON9b19lONp8TqN8DhlyFGOdgZbTQw+N9PvS
	Z/boZF5ulWbrWXaobQB8hgSMjorjEFXtK55/xj35iy33PkDbP3+e9DcaYVPmQNU/raweQiPOLc9OO
	VaWui+8Q24VeDdMvgL+FXXj9uk3EVfzNiFlgVM5ZFrBi1V69vygeSRPBd0VCABFQTOQ/2zcfgDogd
	i+aEszYkvwljtwp2hE+zqVZQl82lN4xzSHKlHMc9UYCHXMfly9N+JCL6/TXFK81zUi7XQoYE3EbiD
	Zi6Lv6QxTouWJTa8whBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wES3F-00000005oYY-0ZS3;
	Sun, 19 Apr 2026 13:19:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wES35-00000005oYA-3L8u
	for linux-phy@lists.infradead.org;
	Sun, 19 Apr 2026 13:19:04 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63JCj9nI2194330
	for <linux-phy@lists.infradead.org>; Sun, 19 Apr 2026 13:18:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UET+B4iJ/71f+B50Lf1XpJBI
	5HylVpOBgDPnLDL8HhU=; b=hxA5GpkqenacWhxKS5s6RvUiqU9U4LxcVcaw4XdB
	nybC/Ofxtab9eNywguyVLI6HyHTxJyLRDlAjR4HWsTtLDcQ6JJa44ZRcXdwm/jBV
	3P73tWAdJaH1ZLcOn/VO4SG7Y5IJV27EA8E9sffH7s+/I3RgCuXZPvJZTJtyy+be
	qfJZ941AphTvkmHQU8+WO4mzh6c7pEbUmmD7gIiYWkhaty/K/+uhXdW4U9d3a0t4
	KEbJScBs2uaKdgMRQd9gBxYDgODqv0Vlo3guc3hhhf6djTvjMkrfI+1Dt5gTlSip
	aoajjJaYQXtuZTDgnK/y+QMusCy3k+A3JemYCuEIpsUiBA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dm388jfm9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 19 Apr 2026 13:18:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b454cac322so19134435ad.2
        for <linux-phy@lists.infradead.org>; Sun, 19 Apr 2026 06:18:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776604733; cv=none;
        d=google.com; s=arc-20240605;
        b=UlM9rvN/NszC+g1z7xjH1jbumHz44LfRgKIEEvcgFj7XZgBH4EBOpMTudyhQg31gBv
         ctE4yDhnCFsw4lUemrT2esARQbtnS+wdziS8LQj+Y6BVodOoce1WeLa2W45N2F5Sl9D9
         LPpgtXXW2qY5F5doiYDOZooi8dhJqOotGoEzCYYkBRT1nX0t5fRO008xp1HIFCIwakwV
         pV4jZ3dsuJAlEy6snigQjp73U0J1dqP7iuVoHeNO+Ur+ay8BOGnFQmR8GTr2XDNZmScw
         zTPPvlnG4kJulsHaqdxEs81BY/LeGVCHYc5x7mtoAH6YmHkTBcyP2UeBoNX5WeS7tzCW
         KyVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UET+B4iJ/71f+B50Lf1XpJBI5HylVpOBgDPnLDL8HhU=;
        fh=sVcKKt/XF8QS740OZz6Q1+xCqV1BuIK9lAFEMY2peh0=;
        b=CQZMJY2ykwsqVySVSMoE52RGiLL+53WI38iokDEEPpALYPcV21YnrY4BH8r4wx6Pak
         Iv91xeI9nVAmRKN/gE4miLw5QNTF+PxjqQ7cjx1iOOfM4UFd1kxWjkeD7frFG5Ty1bx5
         PnJnC/XIx+Lshn9uKCaGAevL42nMhDtdEYDS4616eSxE5lazwBjEpWu5XA6RN8xQPrmu
         rus/OzlH/4PO4o/oZFCyxscN4LSVbZiEH957XmlbIILkIqWH+f4BPplNl+zzMtYs0EjB
         CzaPniC2Vf7xQd+pl22lUqCjf5d5tYei4T1nIlMS2TgMEHQlnyb2mczTlfEPX52UTC0h
         lUFw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776604733; x=1777209533; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UET+B4iJ/71f+B50Lf1XpJBI5HylVpOBgDPnLDL8HhU=;
        b=iiUuGaLrKbC59DfN5fhTRNJcR8Sf1Lwc6t6SOJN5ClSC0hQUT5Zn4EsH/KNENswzC8
         BnJ4KgldYMdy3KSFVpRw3sxuSs6fraFS15u5OV5jGrbMr086ar7eAv1OGjIQqCr7Wlx5
         cTmW1Q4dzXK8hKesw6vtYazSwdgEbey7Nai6GBP7E+Oj27ZuOq0w+H6sF6sQDsvPqaTP
         uQFXp0q/ENGpl6ORXeCRVsjoff4OJokDmQqP4pNGNnHbd19s5LYiId+bNIWxhihqQubz
         O24+fJ8Q4ugPieITXvlMc6ckdNV8MysjWkNwGEVRUdWODop2jLKcIzHuOzvXJ1GkCyqK
         zuaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776604733; x=1777209533;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UET+B4iJ/71f+B50Lf1XpJBI5HylVpOBgDPnLDL8HhU=;
        b=QaS1nvnNnrzXErNyBWDLngBZBakYFVWCAlenAMNzbnnfLk5G77K03GDrFYkMil+DEk
         8SQCR8KiO2ZaHaB1D3sq1pZ59fRJklHGero/Vm9E+t8JizWXSaZP3ZEZXSIpWnWzeyEi
         +8spKYF7e4Ioe7o37bR894oLY0vFFC1/KSSta0xWW2DMvOqMjs1laQRpfpgyqYz6Frn/
         Cfq6Khw9RAss8XDlaxOg8KsIvYJ4gI0WCtxA5SX7EWRoUOol99QzJz0RQY7pF7YpTPGn
         XeHZxrWsbJFtVcXWIvUBLudlw1hdygEFbymf8VTLY6y/eke6IQyiEMzKv10nrWZst+RL
         4MRQ==
X-Forwarded-Encrypted: i=1; AFNElJ+jD32tsFt7qtZtl+Hcb+wIaCx8e0jHF+xyQlfXRB5UhNrXclHnBrylXVXf15+oHygi5YWL4qBojzU=@lists.infradead.org
X-Gm-Message-State: AOJu0YypVCRotdiwRTLAxlPyZv50jP+IDi63hcR+xwzUdoNInJ3yN3wj
	7l67OGKAsgLEGkDyFdBHOaZQHeOdBs7gSBedi75Dx968GtsJzYZWIpf1tl12+JOUjFxXayRAM8s
	BqjzZa80N0jDTUfXyZg34M9SkYs4hfUdVKE9LtsOdOM5cUkPt1+jkMQ9L5m6QFozHEKi26vh8ja
	P61EJLBZefLBdCkatB4h8eow+bzMSJByvvcj+Z8cxryQU=
X-Gm-Gg: AeBDievNFMHIRykCpzJrtdwj6hxFdw4NabD2Xi9B6H//ZY9SKKDB1qPXX3cEB0iKG7P
	MHEYYVhHl8gYtlT5qulaZTYCeO5X8ovS+J96JJK0qmXd6IXb5jHgJW3hk6DkGxefA8TIr3ePeL6
	N/ZShB0NI44DSfADUZE5Ppn0/zceQB9e8zqsBKQPFR2jSfVproCniDeveFOg1LJ0g9OgQ27/RZH
	r8iI6kd6SGrWnJAehwJ7CX5XxXKi8qbJl0PCSNRVuFkbyu8
X-Received: by 2002:a17:902:e54c:b0:2b2:ece2:bc1b with SMTP id d9443c01a7336-2b5f9f63726mr110404355ad.26.1776604732665;
        Sun, 19 Apr 2026 06:18:52 -0700 (PDT)
X-Received: by 2002:a17:902:e54c:b0:2b2:ece2:bc1b with SMTP id
 d9443c01a7336-2b5f9f63726mr110403955ad.26.1776604731981; Sun, 19 Apr 2026
 06:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com>
In-Reply-To: <20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 19 Apr 2026 16:18:43 +0300
X-Gm-Features: AQROBzDnzMrHX0wayIqHDfvvxQJV9DoqHrM31ayivRi8XO8bA4gyFSt0BUPrSuA
Message-ID: <CAO9ioeXT0jxu875jBsAbOVrDqonASWSmmxJbP0AiitXb-gUANQ@mail.gmail.com>
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming
 on Glymur
To: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GthyPE1C c=1 sm=1 tr=0 ts=69e4d63d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8 a=DTWm2lbWoUhOli0qlWkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 48yxFnYkAdhhnbZEwb7lehuZSNOTFqqx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE5MDE0MSBTYWx0ZWRfX5IXk55gclFSy
 zxgzl+iCRHod/ppJX9v1vEDDD20KVmy2RmmzvUIh9WZfnOtJJbQjhcdHRi0uJgphdhY4zfNNdvH
 LaTEbn6973FgSJaD+iwglyIL9po2NXoiX5c/dpQ8C7meomacW11eWTsRc+2k3zFz2I4P34tSRq+
 8qVEk1xJ/HKLjFHLlZuWodklqUG7bYKW1BnfjoQE+0KZtpDqxQpv5bqVTMb0W8wYVdDxsb+FLUu
 Mu4pI9OXBbjziFC5hAXwPJJlXvNViHA2L3XfccGxO6MTbRQKHkM5okSjFc8ln2QHUBs6PFE7bi8
 Yr3UoDUkPhv0NGBhtVhkpAGzdtk7ML4yAHq+Lvv/xRZMUjtsLJfTKnmwj6pmHSJcVsF6nyzIsSV
 A6a9XcZZbljSCWAiOUMcjy9gdAjqohI1bsl+szRkttCF5F9lOdpQ5fxUIOnYa31eU7+Zx94tbC6
 2g+ZsBFVAjNLgeevdEQ==
X-Proofpoint-ORIG-GUID: 48yxFnYkAdhhnbZEwb7lehuZSNOTFqqx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-19_04,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604190141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260419_061855_892611_314CB8FF 
X-CRM114-Status: GOOD (  18.47  )
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

On Sun, 19 Apr 2026 at 13:16, Mahadevan P <mahadevan.p@oss.qualcomm.com> wrote:
>
> The existing DP PHY PLL and AUX configuration for the Glymur platform
> does not fully follow the Hardware Programming Guide requirements for
> DP over Type-C, which results in DP link bring-up failures.
>
> Update the DP PHY programming sequence and PLL-related register
> settings to align with the latest HPG recommendations. With this
> change, DP link training completes successfully on Glymur-based
> platforms.
>
> Fixes: d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> ---
> Tested on a Glymur CRD platform with two DisplayPorts over USB Type-C:
> - Link training completes successfully
> - Display comes up at expected resolutions
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 213 +++++++++++++++------
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |   2 +
>  2 files changed, 154 insertions(+), 61 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 93f1aa10d400..bb5e4091fd0c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -283,8 +283,8 @@ static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
>         [QPHY_DP_AON_TOGGLE_ENABLE]             = QPHY_V8_PCS_AON_DP_AON_TOGGLE_ENABLE,
>
>         [QPHY_COM_RESETSM_CNTRL]                = QSERDES_V8_COM_RESETSM_CNTRL,
> -       [QPHY_COM_C_READY_STATUS]               = QSERDES_V8_COM_C_READY_STATUS,
> -       [QPHY_COM_CMN_STATUS]                   = QSERDES_V8_COM_CMN_STATUS,
> +       [QPHY_COM_C_READY_STATUS]               = QSERDES_V8_COM_C_READY_STATUS_N3,
> +       [QPHY_COM_CMN_STATUS]                   = QSERDES_V8_COM_CMN_STATUS_N3,
>         [QPHY_COM_BIAS_EN_CLKBUFLR_EN]  = QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN,
>
>         [QPHY_DP_PHY_STATUS]                    = QSERDES_V8_DP_PHY_STATUS,
> @@ -1386,10 +1386,10 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_serdes_tbl[] = {
>  };
>
>  static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x02),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CP_CTRL_MODE0, 0x06),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE1, 0x10),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE1, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE0, 0x16),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE0, 0x36),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORECLK_DIV_MODE0, 0x0a),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START1_MODE0, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
> @@ -1404,12 +1404,13 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_BUF_ENABLE, 0x06),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_IVCO, 0x07),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_EN_SEL, 0x3b),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_RESETSM_CNTRL, 0x20),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP_EN, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_CTRL, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_MAP, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_SELECT, 0x30),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORE_CLK_EN, 0x00),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x56),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x16),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SVS_MODE_CLK_SEL, 0x15),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_MODE_CONTD1, 0x24),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DCC_CAL_1, 0x40),
> @@ -1445,26 +1446,26 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_tx_tbl[] = {
>  };
>
>  static const struct qmp_phy_init_tbl qmp_v8_n3p_dp_tx_tbl[] = {
> -       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRANSMITTER_EN_CTRL, 0x3f),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRANSMITTER_EN_CTRL, 0x1a),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_VMODE_CTRL1, 0x40),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_ANA_INTERFACE_SELECT1, 0x07),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_ANA_INTERFACE_SELECT2, 0x18),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_PCS_INTERFACE_SELECT1, 0x50),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_1, 0x0d),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_CLKBUF_ENABLE, 0x07),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_CLKBUF_ENABLE, 0x87),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL, 0x0f),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_LVL_UPDATE_CTRL, 0x0f),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRAN_DRVR_EMP_EN, 0x5f),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_EMP_POST1_LVL, 0x20),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_EMP_POST1_LVL, 0x20),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_EMP_POST1_LVL, 0x2b),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_EMP_POST1_LVL, 0x2b),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_PRE1_EMPH, 0x20),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_PRE1_EMPH, 0x20),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_DRV_LVL, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_DRV_LVL, 0x00),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_HIGHZ_DRVR_EN, 0x30),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_HIGHZ_DRVR_EN, 0x3f),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_2, 0x50),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_3, 0x51),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_DCC_ANA_CTRL2, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_DCC_ANA_CTRL2, 0x0c),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_RESTRIM_CAL_CTRL, 0x20),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_RESTRIM_CAL_CTRL, 0x02),
>         QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_RESTRIM_POST_CAL_OFFSET, 0x10),
> @@ -1589,11 +1590,12 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_serdes_tbl_hbr3[] = {
>
>  static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_rbr[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_HSCLK_SEL_1, 0x05),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x7a),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x02),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x8d),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x27),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE1_MODE0, 0x83),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP1_MODE0, 0x37),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP2_MODE0, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x02),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP1_MODE0, 0x1c),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP2_MODE0, 0x02),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DEC_START_MODE0, 0x54),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START2_MODE0, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START3_MODE0, 0x06),
> @@ -1601,16 +1603,17 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_rbr[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE2_MODE0, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_HSCLK_SEL_1, 0x05),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_MODE_CONTD3, 0x07),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1, 0x30),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_IP_CTRL_AND_DP_SEL, 0xa4),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1, 0x3f),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_IP_CTRL_AND_DP_SEL, 0xa7),
>  };
>
>  static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_hbr[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_HSCLK_SEL_1, 0x04),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x21),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xf6),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x20),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE1_MODE0, 0x18),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP1_MODE0, 0x07),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x02),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP1_MODE0, 0x08),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP2_MODE0, 0x07),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DEC_START_MODE0, 0x46),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START2_MODE0, 0x00),
> @@ -1627,7 +1630,8 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_hbr2[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_HSCLK_SEL_1, 0x03),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xf6),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x20),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE1_MODE0, 0x0),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE1_MODE0, 0x18),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x02),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE0, 0x16),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE0, 0x36),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP1_MODE0, 0x10),
> @@ -1637,9 +1641,9 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_hbr2[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START3_MODE0, 0x05),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE1_MODE0, 0xae),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE2_MODE0, 0x02),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_HSCLK_SEL_1, 0x00),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_IP_CTRL_AND_DP_SEL, 0xbf),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIAS_EN_CLKBUFLR_EN, 0x1c),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_HSCLK_SEL_1, 0x03),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_IP_CTRL_AND_DP_SEL, 0xab),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIAS_EN_CLKBUFLR_EN, 0x17),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_RESETSM_CNTRL, 0x20),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_MODE_CONTD3, 0x03),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1, 0x3f),
> @@ -1647,8 +1651,8 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_hbr2[] = {
>
>  static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_hbr3[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_HSCLK_SEL_1, 0x02),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x63),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x0c),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x14),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x25),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE1_MODE0, 0x5b),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x02),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CP_CTRL_MODE0, 0x06),
> @@ -1656,7 +1660,7 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_hbr3[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE0, 0x36),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORECLK_DIV_MODE0, 0x0a),
>
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP1_MODE0, 0x17),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP1_MODE0, 0x18),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP2_MODE0, 0x15),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DEC_START_MODE0, 0x4f),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START1_MODE0, 0x00),
> @@ -1675,19 +1679,19 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl_hbr3[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYS_CLK_CTRL, 0x02),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_BUF_ENABLE, 0x06),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_IVCO, 0x07),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_EN_SEL, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_EN_SEL, 0x3b),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_CTRL, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_MAP, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_SELECT, 0x30),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORE_CLK_EN, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x16),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SVS_MODE_CLK_SEL, 0x15),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1, 0x30),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIAS_EN_CLKBUFLR_EN, 0x10),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1, 0x3f),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIAS_EN_CLKBUFLR_EN, 0x17),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_MODE_CONTD3, 0x05),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_MODE_CONTD1, 0x24),
>         QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_BIN_VCOCAL_HSCLK_SEL_1, 0x02),
> -       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_IP_CTRL_AND_DP_SEL, 0x84),
> +       QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_IP_CTRL_AND_DP_SEL, 0x87),
>  };
>
>  static const struct qmp_phy_init_tbl sc8280xp_usb43dp_serdes_tbl[] = {
> @@ -3145,6 +3149,30 @@ static int qmp_combo_configure_dp_swing(struct qmp_combo *qmp)
>         return 0;
>  }
>
> +static bool qmp_v8_combo_configure_dp_mode(struct qmp_combo *qmp)
> +{
> +       bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE);
> +       const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> +       u32 val;
> +
> +       val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +               DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +               DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN;
> +
> +       if (dp_opts->lanes == 1 || dp_opts->lanes == 2) {
> +               if (reverse)
> +                       val &= ~DP_PHY_PD_CTL_LANE_2_3_PWRDN;
> +               else
> +                       val &= ~DP_PHY_PD_CTL_LANE_0_1_PWRDN;
> +       }
> +
> +       writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +
> +       writel(0x5c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);

Are you saying that we don't need to write 0x4c here in case of the
reverse mode? Was that changed and why?

> +
> +       return reverse;
> +}
> +
>  static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
>  {
>         const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> @@ -3324,16 +3352,70 @@ static void qmp_v4_dp_aux_init(struct qmp_combo *qmp)
>                qmp->dp_dp_phy + QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK);
>  }
>
> +static int qmp_v8_helper_configure_dp_phy(struct qmp_combo *qmp)
> +{
> +       const struct qmp_phy_cfg *cfg = qmp->cfg;
> +       u32 status;
> +       int ret;
> +
> +       writel(0x0f, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);
> +
> +       qmp_v8_combo_configure_dp_mode(qmp);
> +
> +       writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> +       writel(0xa4, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
> +
> +       writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
> +       writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
> +
> +       ret = qmp->cfg->configure_dp_clocks(qmp);
> +       if (ret)
> +               return ret;
> +
> +       writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +       writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +       writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +       writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> +
> +       writel(0x20, qmp->dp_serdes + cfg->regs[QPHY_COM_RESETSM_CNTRL]);
> +
> +       if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
> +                       status,
> +                       ((status & BIT(0)) > 0),
> +                       500,
> +                       10000))
> +               return -ETIMEDOUT;
> +
> +       if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +                       status,
> +                       ((status & BIT(0)) > 0),
> +                       500,
> +                       10000))
> +               return -ETIMEDOUT;
> +
> +       if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +                       status,
> +                       ((status & BIT(1)) > 0),
> +                       500,
> +                       10000))
> +               return -ETIMEDOUT;
> +
> +       return 0;
> +}
> +
>  static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
>  {
>         const struct qmp_phy_cfg *cfg = qmp->cfg;
>
> -       writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> -              DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> -              qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +       writel(0x3f, qmp->dp_serdes + QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1);
> +
> +       writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +               DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +               DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> +               qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);

No AUX_PWRDN? Why?

>
>         /* Turn on BIAS current for PHY/PLL */
> -       writel(0x1c, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
> +       writel(0x17, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
>
>         writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
>         writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> @@ -3361,8 +3443,8 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
>         writel(0x27, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
>         writel(0x27, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
>
> -       writel(0x20, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> -       writel(0x20, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> +       writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> +       writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
>
>         qmp_combo_configure_dp_swing(qmp);
>  }
> @@ -3370,48 +3452,41 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
>  static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
>  {
>         const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> -       u32 phy_vco_div;
>         unsigned long pixel_freq;
> -       const struct qmp_phy_cfg *cfg = qmp->cfg;
>
>         switch (dp_opts->link_rate) {
>         case 1620:
> -               phy_vco_div = 0x4;
>                 pixel_freq = 1620000000UL / 2;
>                 break;
>         case 2700:
> -               phy_vco_div = 0x2;
>                 pixel_freq = 2700000000UL / 2;
>                 break;
>         case 5400:
> -               phy_vco_div = 0x4;
>                 pixel_freq = 5400000000UL / 4;
>                 break;
>         case 8100:
> -               phy_vco_div = 0x3;
>                 pixel_freq = 8100000000UL / 6;
>                 break;
>         default:
>                 /* Other link rates aren't supported */
>                 return -EINVAL;
>         }
> -       writel(phy_vco_div, qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_VCO_DIV]);

Hmm?

>
>         /* disable core reset tsync */
>         writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>
> -       writel(0x04, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
> -       writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
> +       writel(0x09, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
> +       writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
>         writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_CYC);
> -       writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
> +       writel(0x33, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
>
>         writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
>         writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX2_TX3_LANE_CTL);
>         writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX0_TX1_LANE_CTL);
>         writel(0x01, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_CFG1);
> -       writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
> +       writel(0x33, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
>         writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
> -       writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
> +       writel(0x02, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
>
>         clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
>         clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);
> @@ -3558,7 +3633,7 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>         u32 status;
>         int ret;
>
> -       ret = qmp_v456_configure_dp_phy(qmp);
> +       ret = qmp_v8_helper_configure_dp_phy(qmp);
>         if (ret < 0)
>                 return ret;
>
> @@ -3570,13 +3645,13 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>         } else if (dp_opts->lanes == 2) {
>                 bias0_en = reverse ? 0x3f : 0x15;
>                 bias1_en = reverse ? 0x15 : 0x3f;
> -               drvr0_en = 0x10;
> -               drvr1_en = 0x10;
> +               drvr0_en = 0x30;
> +               drvr1_en = 0x30;
>         } else {
>                 bias0_en = 0x3f;
>                 bias1_en = 0x3f;
> -               drvr0_en = 0x34;
> -               drvr1_en = 0x34;
> +               drvr0_en = 0x30;
> +               drvr1_en = 0x30;
>         }
>
>         writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
> @@ -3584,6 +3659,14 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>         writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
>         writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
>
> +       writel(0x03, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +       writel(0x23, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +       writel(0x22, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
> +
> +       writel(0x0a, qmp->dp_tx + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
> +       writel(0x0a, qmp->dp_tx2 + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
> +
> +       writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
>         writel(0x08, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
>         udelay(100);
>         writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> @@ -3591,16 +3674,24 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
>
>         if (readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
>                         status,
> -                       ((status & BIT(1)) > 0),
> +                       ((status & BIT(0)) > 0),
>                         500,
>                         10000))
>                 return -ETIMEDOUT;
>
> -       writel(0x00, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
> -       writel(0x00, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
> +       if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +                       status,
> +                       ((status & BIT(0)) > 0),
> +                       500,
> +                       10000))
> +               return -ETIMEDOUT;
>
> -       writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> -       writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
> +       if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
> +                       status,
> +                       ((status & BIT(1)) > 0),
> +                       500,
> +                       10000))
> +               return -ETIMEDOUT;
>
>         return 0;
>  }
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
> index d8ac4c4a2c31..b35b486cfa56 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
> @@ -71,5 +71,7 @@
>  #define QSERDES_V8_COM_ADDITIONAL_MISC                 0x1b4
>  #define QSERDES_V8_COM_CMN_STATUS                      0x2c8
>  #define QSERDES_V8_COM_C_READY_STATUS                  0x2f0
> +#define QSERDES_V8_COM_CMN_STATUS_N3                   0x314
> +#define QSERDES_V8_COM_C_READY_STATUS_N3               0x33c
>
>  #endif
>
> ---
> base-commit: 1c7cc4904160c6fc6377564140062d68a3dc93a0
> change-id: 20260414-glymur_dp-ffea83a75969
>
> Best regards,
> --
> Mahadevan P <mahadevan.p@oss.qualcomm.com>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
