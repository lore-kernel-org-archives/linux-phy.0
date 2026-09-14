Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A4CC88E6A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 09:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgbZTR04I846Mp6jmbcR4w4PQDtZeQX40djLE842i0k=; b=GJrax/FYmc0PSs
	ucxgEfR4FEWU4b34rsNODtzkQI+qONCT6Wv3xWprWezfK5q+Oz8rkRVC86KrouJQujl7RkbQA/YM+
	6Duz4Mpj2FtAPvvXcsa49BL2PB5zbeZmkGu4/KISGEjQdjwSFZz532TqWp4xbDmKQkcwjLqtEen/8
	90UZlRKJI2VmiFbULBjTsBj2eeMk0ZwiF1aByYLPlMtIMZdSOwBko95kpcg6rmXAACK0m94W5UZxh
	RgDVWbg+seWaqf8NTpIz8v2J3i7T2htYaTQbYtlCQInX++GNVyxYW1fTioDUwJm9uHBWHW17sepnh
	CrYcKpqrnzwGc9JGARWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62lU-00000002sp2-2UeP;
	Mon, 14 Sep 2026 09:14:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62lR-00000002smz-2ifd
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 09:14:14 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68E5inig4057536
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 09:14:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZG9wl1M74lgDTaTfHkBv64HRev6yjML1GUvpwSVAtcI=; b=i02qEmAtCReWHuXf
	PV8RoA7hS1OM7zLF14PeNOkQk/eyewJ6Sc6ErzaoTOl1sGlljFmif6f2h4hHhV0S
	b0LtC6OEwbNfYXc2eJw/akOU031MRtodGEqA8ep06uu4XdPjji4c/R0EId5rR6/J
	0xMB3iyTkbbByGmrbWUB0UdqUqlVyOpnfr+0x4xzJ22vfPXUYWTycpDpNlBPeq83
	GPsb4iVt/PTMiUigDPfmFPXgC8Bt5G+J6RFTHKqBrzmepBWusY9HrF2Ib6Dcm6ap
	dxepQI1jSPUSFADDalSKRle80DyhKhIje83OlMS70M5xd5yOtYmJ0Obar4rDoZbq
	ddLxAg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gp3hsspq2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 09:14:12 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-938fd633df7so47086085a.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 02:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789377246; x=1789982046; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZG9wl1M74lgDTaTfHkBv64HRev6yjML1GUvpwSVAtcI=;
        b=aAQKsPbIRg6P5dpnSbQyOLPp6bISk4pUwPW+QLnkRHlTJwe062BEh4jcusSJE3+5W9
         FjW0zpketGW5XB2Gup6vCvi/WCKiL15KTBB2gUEgO4oXbSoubnDYRrR/wJLpNSUV5i92
         IXJRvY/R1GIMr+DFYs2CATqeBANPZ6wcupDr2JI23C4jhvjW2E7pGMoVRVEjObhRtDSe
         40raIalasA9xsCSCYgESvFe9cO38HVNa+Lot1MfZQvryE7tnenJJkdAwHRzf8nZmpUpp
         4Y6MnRW2EIgO28GSI4NUm9aWCoorTtutVFROM63UqyAyiCK5g4IwS77SEM+AD+HBIFjS
         An7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789377246; x=1789982046;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZG9wl1M74lgDTaTfHkBv64HRev6yjML1GUvpwSVAtcI=;
        b=lR9SadUhgcYA3mj0bLU9MUfU1pcWAnpwntoDz6yHNHhpa+7QKNwnF7X/2X1G8j/fPb
         BDMwWGqAiunCLCtvEJCu8chg3GDoT+Tt8RQ1a4B9HFqqbc8mnIG9dT3wlUhfXBB6iNsI
         /N1bfDJ3Tnp5KGhihhsQSB7wWXVZoT8YWl/kUY8g+TpaqqQLv+FHIUk0rPFkQB2O7ftq
         FyoekSA7gtAWAuLGtgntod07WbBZufGD3r9aRaOd4eY2qlwGDeOK8Spxr0aEdEUFzeKQ
         py5cvqvbQMIPIp4l/Xp6hE4+92s7ycalgvpIH81PB0DIpfRlKQv3EImv8J1DHj/qLp8Z
         0t1w==
X-Forwarded-Encrypted: i=1; AKwUvBzLaOMvs4qjmcRtrEH6ZTjeUlYOojnC0FBGgXGu0d7VBjzRQ6hODwCVuq4BKuIa2sJWp/z2MZzlKH8=@lists.infradead.org
X-Gm-Message-State: AFuF++lEyy0jmi8qTMNnhYSbNGAmWau2m2m5yXxs7+BKBFqenWwSDmb/
	WM9eo66QeS5nqKtPvGtfErC9XJc29YXWVLHR5Lj0cVjUwMNt+GJSJX2qN6DWkUYWkp+UfgwEP41
	02g5M+P2faWR8n7UiZNrMXkoGNF6LNAXMGHQM4EA6MhyGUQtHhXvHpEhM9gUEDL++qqUL
X-Gm-Gg: AYBFou0KZ3esuPQCkP/iceulomfZnkCGKMXZ+HeGkXAkvQpo2gFIQMw1dKGxyhlVJ5Z
	tDmfBHLuXrrNU/nwZr4xhkDkUXiDdirWEsjIrLLRIK9iyRuF/sXYKeu3jswkZOP2Fv94IQJwsPN
	rbP3NgTCPe+sdNkqP7TV0stJ9mB6SfRJWsJR4udlIR0gc/2uWytdWvnEN/UpxSl3hjsclFXP9oA
	TonysAMxM7FFP2JPVjp6AIQgeYqXYRjt3YSJil/XiAtkjs9KuHeIem4pl+XYH6t7V5emiaZmodo
	rQdS6OAfg0pJ/pOQlg7eBgrJQCKbBJQcO2TSWQjtqCzbgJGTY85864LYw0SIE6iY9yY7QNBy5Ft
	m6ifVe4OssEPgDxGFiPLfzA==
X-Received: by 2002:a05:620a:6018:b0:939:47f4:935a with SMTP id af79cd13be357-93a29c955b9mr163372485a.5.1789377245690;
        Mon, 14 Sep 2026 02:14:05 -0700 (PDT)
X-Received: by 2002:a05:620a:6018:b0:939:47f4:935a with SMTP id af79cd13be357-93a29c955b9mr163369885a.5.1789377245246;
        Mon, 14 Sep 2026 02:14:05 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29660219ecsm393573266b.16.2026.09.14.02.14.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 02:14:04 -0700 (PDT)
Message-ID: <381607db-0e7e-4d27-a992-64cd722c23fc@oss.qualcomm.com>
Date: Mon, 14 Sep 2026 11:14:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: glymur: Add UFS nodes
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
 <20260911-glymur_ufs_qcb_enablement-v1-3-b9fc5e2ee99a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-3-b9fc5e2ee99a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDEzMSBTYWx0ZWRfX/Abidws7R7Hj
 Y53bkGhIR/AOZd0pS110exJyiuVI8wKuxM/iUCsygkHgQd1vGt6AL9hyLs8S7l3tr6XAXQyAXhy
 S6VubX5hH+Ur/SbJicXmPbX/r7XOU0u34Q25h9r05xCzYX7DLAs9I6bP6vvZzbaGvZ8j1093qiQ
 hGJCVMNjRdB2PwAIJU0D9PhaUiB8iqGIVW6a+rbCuog2pHg7pgE23cFpOnvTIhtPfhOF4d3qhsk
 uLnZahILad0Ucvffa8NLC2Ar1n4g/K8h6RwY5Z/GAz21hVWj2MFmS4nbdueEuQyj9/xT5Xcq8bs
 pMgFVsljFhYQMe1Y54/1WZ0AoTHplpQzzSe30NXnA/Di1NvCqONiMpQdGX11gbyxZuba3Q/T8li
 qq5hDUnPf4W7nfqzAKmYO3yzyBqPLUe2eWG8qYPDPoNJBXZpAODJe9Gu2Eiygnu951BCrYOOR5y
 P+UxfHNNS36HXjdurAA==
X-Authority-Analysis: v=2.4 cv=IZwSymqa c=1 sm=1 tr=0 ts=6aa7bae4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Xzt-r8i8nvNm0dTu8BUA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: lUFz3uKPLfef6VsrVorDqp5SCCrpK1XB
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDEzMSBTYWx0ZWRfX4gC2nALdd1Le
 sAhrzsP0jSmAH91AN4CJI3/YFgOcO5Ij7yttLeo0egqf7tTWakH2iYJef+a+1dbwqmvmpzZhGv9
 hSCGXl5tP5sNfhyzIs8yHxGHOYoTvfc=
X-Proofpoint-ORIG-GUID: lUFz3uKPLfef6VsrVorDqp5SCCrpK1XB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-14_02,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609140131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_021413_806095_E54FDE44 
X-CRM114-Status: GOOD (  16.80  )
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

On 9/11/26 6:47 PM, Pradeep P V K wrote:
> Add UFS PHY and UFS host controller nodes for Glymur SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 114 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 111 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 624a9edd602c..7bbc804ed340 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -812,9 +812,9 @@ gcc: clock-controller@100000 {
>  				 <0>,				/* QUSB4 1 PHY RX 1 */
>  				 <0>,				/* QUSB4 2 PHY RX 0 */
>  				 <0>,				/* QUSB4 2 PHY RX 1 */
> -				 <0>,				/* UFS PHY RX Symbol 0 */
> -				 <0>,				/* UFS PHY RX Symbol 1 */
> -				 <0>,				/* UFS PHY TX Symbol 0 */
> +				 <&ufs_mem_phy 0>,		/* UFS PHY RX Symbol 0 */
> +				 <&ufs_mem_phy 1>,		/* UFS PHY RX Symbol 1 */
> +				 <&ufs_mem_phy 2>,		/* UFS PHY TX Symbol 0 */

The comment is no useful, please drop it


>  				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>  				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
>  				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
> @@ -4103,6 +4103,114 @@ rng: rng@10c3000 {
>  			reg = <0x0 0x010c3000 0x0 0x1000>;
>  		};
>  
> +		ufs_mem_phy: phy@1d80000 {
> +			compatible = "qcom,glymur-qmp-ufs-phy";
> +			reg = <0x0 0x01d80000 0x0 0x2000>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 /* UFS and PCIE4 shares the same clkref on glymur */

s/shares/share

> +				 <&tcsr TCSR_PCIE_4_CLKREF_EN>;
> +
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
> +
> +			resets = <&ufs_mem_hc 0>;
> +			reset-names = "ufsphy";
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		ufs_mem_hc: ufshc@1d84000 {
> +			compatible = "qcom,glymur-ufshc",
> +				     "qcom,ufshc",
> +				     "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>,
> +			      <0x0 0x01da0000 0x0 0x15000>;
> +
> +			reg-names = "std",

Stray \n above

[...]

> +			ufs_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-100000000 {
> +					opp-hz = /bits/ 64 <100000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <100000000>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>,
> +						 /bits/ 64 <0>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-403000000 {

There's another (201.5 MHz) OPP at SVS

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
