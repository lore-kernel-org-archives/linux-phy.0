Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C578E9410B
	for <linux-phy@archiver.kernel.org>; Fri,  2 Jan 2026 03:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8pkpytS44Ub/d01/211YzzW3/OlsjzxQih91dNOX3N8=; b=gE475OMjD4n854
	YtQlWd3ki12az5Oymt0Hsz3ytF7XypYw/EgVS/jvllpitDioYtK5Nf88biZcEesAQ+eQWK+lEyaFR
	DI7/TFk2gOEGlYQkAIcv46jSRrL8rhj/Eo3YESQKxEjbEn6mBb03sslQwCDv+NI+ZE/H0Zb/o9V6V
	4V5SkK3dGFXyiTo3apeSn7YNZ5SgSPw36Mx6t+qFwEbnGMliV4z2dyST3t3G2g24M9o0JYuZ9ZS+6
	aOJtFS0lIOIyooeO6iEYQV75gf9Va3O2JYxwqC7ieAtroUT7+L2YJX0gN5NiQBkaFxqFXIzxy9pSG
	PYs5e7FEH76GxKTbapXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbWDD-00000007l9s-2Xn2;
	Fri, 02 Jan 2026 03:52:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbWDA-00000007l9T-3Pio
	for linux-phy@lists.infradead.org;
	Fri, 02 Jan 2026 03:52:26 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601N8d9G2958544
	for <linux-phy@lists.infradead.org>; Fri, 2 Jan 2026 03:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S61SjyiHBkIhWo/HAA8SDc3EP7YavRLTn5aWkirrCNM=; b=EsdGxvtyhsO3XTzz
	lMtW7AFOjv/2/3n9+XcrlezBBNytqIsqOgzo2q89u1tNvUw3yRBl7cBRTmYw6RU4
	cKtwBkbfzhdGMjeJaa7aRW5jd3TEcKghzFhK3SD0pAylfXlq9btoSCzF/UbxJbBY
	Jx9v4Vcs3eOqZ7j3Pf5DC0nCjVO9q+CIKFSb68X43+dk8mV1M127MwH71fNqPJcu
	7/posnD7wgh8MrvcHPf7Clo4b4JiNjgOJ4Ylnr/6qOvnWAfBOg3m/lMyKqpVPE28
	gY67g3GCK5QQ74RRTB+/cKm/7dunh9MvbK29Cz1GLBNulc72CtjsYmCS9/3uMhVa
	lup9Rg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcw5e3p55-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 02 Jan 2026 03:52:23 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b952a966d7so24257257b3a.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Jan 2026 19:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767325943; x=1767930743; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S61SjyiHBkIhWo/HAA8SDc3EP7YavRLTn5aWkirrCNM=;
        b=V5q6zIw7qYousWODS6m1CyMVYFZRN0nhLJ/yyXutfCG4Nhqhn3zjJZoPeZyNeRPTk5
         vefMjC135tSBkHU+Cv0PvJNm3gk6xFNxDMvzpz2gU14pKDNCaXtE10XWdCt4XadqjRRB
         pWEkjZCTCx2zxU2P9kUNGT3v6pvEvZrFIkZZodQpz74CLFFjkQn+mtltpydSgZ7JWcFO
         2AC5O2Jsbp4jseaegvlde/X0ld+Ue7mbpmseAmJJwwU7Ah6pMTqAm7lN1U9IVCzmPK/g
         t95L5cCupJz8qfP0dArtOwvWW8YlK26ai0LiKCvQZtNOGNmfpEEjlHIwU54Lf5XcEgdQ
         NDew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767325943; x=1767930743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S61SjyiHBkIhWo/HAA8SDc3EP7YavRLTn5aWkirrCNM=;
        b=uRaKtsh7eeLE6qJc/o9m60n9nXvSmF/5qOeyAiAFG9MRgEHVQdkQn5IMDKRGwYM9FL
         oPU89HQLhAAnU4yE5etTmUkZ9KcMQvOAMI6swLbONcYf28o+2xIowM8lDJJqyp6Y+2GA
         i873UodRi90GwQd8LOQFjHi7ODgl11LZzh0O5ZTKWBcgbwhWSFAfoaVUNhSa0ByO7beP
         oQot2SRTiD9CVl0yghxoMkzUTpXTYxNYi60wDeG1xyA5bH7Iocw+1EWdZEJ5/108KsXt
         MvjaDymM6a1ulzAj/pSDcAumxwP3aDTTL66tTow3lLltz+/8stamV+extFFvKK22iMOz
         6rZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlMFz6M5KEQtj/eWcs2+rEQrPoQBbzUbjw9t1PRvXhe1gS2exeSAF2jxwVbcB1NKJeFL+hAk6R3Rc=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywzs77y2FgU1tbx74hPV9zZ6JfYLmfC4WY/sMJIbFekw3QBivbq
	5MTIjcxL+NvuteA9Y7pzXBwE9x3ZNWsqLVp7zbo5/ky9LWD0cOHnAqtxeNkzDzs1eS2qtuziMq0
	+LxAaaL9xzhGeegE64KENtAn18KPV5k6AxRDU7+ZB1pLJq5jSwko3BHbp4HjYf3cqnIG7
X-Gm-Gg: AY/fxX4HrkqrJYaG1BUfZGqHSWHs0rJeFD8YNl3TG2LkOCC2vmvLsOQR46pCpW2et7n
	6OT9sxW3YcdlBEgCQsQDNpTZS+7V0I7rpjTHiIoPTNnxb3145yyOHNVw1aSXHh+Oju1yEjjX6b7
	+CUpTVyKUCAdBmgPMMBP/edfg/A9sGuMNakcReQ13T9LFEXy5Kvci6nWhOfwzAaST7MCPPGEsv2
	wU0Cz9XuMoG8R8/J6+9InuVPawVJzZMmlQYND0tmERqr7ePNb/LXQBXQL+ei7hIVBYZGFunTNfG
	jPqhrq6K3LVwqLxILfTNoARxIqzb58Jf5lRDtqqiJjl3o8TxOjT60pN535JcocP1wxaJ3Wa2qZL
	qEuaDP6o3bGw55hfsSrby2dL/3qCxrQXoO3Hlsg==
X-Received: by 2002:aa7:8e0f:0:b0:7ff:c6fd:d687 with SMTP id d2e1a72fcca58-7ffc6fdd6c0mr25749794b3a.8.1767325943064;
        Thu, 01 Jan 2026 19:52:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCUiCeAS919Ljjowcde1IpwT1czKdpjSEIheCNC48NWCcuQPiQiqia/YF9M2MMiRl0VY40wg==
X-Received: by 2002:aa7:8e0f:0:b0:7ff:c6fd:d687 with SMTP id d2e1a72fcca58-7ffc6fdd6c0mr25749782b3a.8.1767325942574;
        Thu, 01 Jan 2026 19:52:22 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff77abe95dsm39061316b3a.0.2026.01.01.19.52.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jan 2026 19:52:22 -0800 (PST)
Message-ID: <93a90b3a-f083-4621-8a25-f3d1171c812a@oss.qualcomm.com>
Date: Fri, 2 Jan 2026 09:22:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDAzMiBTYWx0ZWRfXznljP5U5tUYy
 G2HodWopp2+LJ5a/5pHr2u4LVUF8kGvc8w9+XRdrMJqixuyWfV2RNQgN7ddYxGlReX4zQ6TASwH
 7r92iSEdHEoqllnLhZ119L/f6vazyQdiwkIZwPZbqZi/z0cnxMv1Vd8vLNqyl9kYgn0AZOHZA2w
 y/GISpH+jjbpz6XBKMl05k9ZOlJX+97oFEMGuTzBqeeJhxTd1OJG3Ta75S+rbRz4mi97Pyg90oj
 /s/crtsyo3hot4EdkYpH7XlgYbJTWUWYPbwEPJ5GKRcUk74B87SPXoiCBmZ3rK/zsS/UTUDFijC
 d8ETUGO6M7NFj0CzQM43lEZ8zufs1oLaHP1aHdxVPEiEQVv798I/svt7enNl+EY/HdatQyxsMdT
 wfyeXS54CKjlkzPJAJCgT5ro+fvjH4qPI5LOwwz5NsQIO1t5eOj37OfUueV17FxwLgs+2FXbCHL
 wf7pYMNeodRhZmLAHQA==
X-Proofpoint-GUID: aHwtqdnYYaeP2A6I7jKct5rrYrBs_Cjk
X-Proofpoint-ORIG-GUID: aHwtqdnYYaeP2A6I7jKct5rrYrBs_Cjk
X-Authority-Analysis: v=2.4 cv=Mdxhep/f c=1 sm=1 tr=0 ts=695740f7 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gjJwvVq1TDH_Shb35fsA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_195224_889529_03FCE575 
X-CRM114-Status: GOOD (  13.61  )
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



On 12/31/2025 3:49 PM, Pradeep P V K wrote:
> Add UFS host controller and PHY nodes for x1e80100 SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 123 +++++++++++++++++++++++++++-
>  1 file changed, 120 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index 21ab6ef61520..cd7e2f130fe2 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -835,9 +835,9 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>,
> -				 <0>,
> -				 <0>;
> +				 <&ufs_mem_phy 0>,
> +				 <&ufs_mem_phy 1>,
> +				 <&ufs_mem_phy 2>;

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
