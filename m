Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5891CC87FCF
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 08:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ya3xEfaOG8pCKXMlmjxY4pnlYa0YEqteFXZ/y4yOGc=; b=XK1f/KeU9tEUEA
	+JbxRPdIn7w7EFsJhbrZAxk2/TqOAkzus//4aOZRV6jZ8+SL9LAlL1+JDWzCVFLjZVi0V0nfUolVb
	GpkgsO03msnibprdWOrNz7nEmRms936OzHt0qfF+u2As9VVtI5WE6MPhGhDgqF0RR3bwTFnmECNfA
	AJssJWa5FfQiRJENeoCkYf3SC3foi3DqMb98s+iN6FC84pUS8IvJ8oD9kY41Uv2uJOIUDGXgmCL5/
	ve32oionobht2XTTgphD6P86YWWgoMJaK3w8E+clFir3igTlzr988CD9BDGJFH4KlmApNS1GWFWTZ
	x3TLgW4ebz5LvXCoRE+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukehc-00000004FrE-44CJ;
	Sat, 09 Aug 2025 08:13:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukehb-00000004Fqs-0Rtw
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 08:13:20 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5794e2l5010478
	for <linux-phy@lists.infradead.org>; Sat, 9 Aug 2025 08:13:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=O2W0/Uola8XxJxiRMnFlST/E
	5qvZKRamukaTM8REaeY=; b=QnmxysSAIisuS80ghUv9HK8lNGCT2nUbWyl8EGdo
	4HKaFSgJ2PFxvBX/dxZ3ySjEZD+CtXFCRTKbpfqdS7QN7fMf4D4J0bpvIMwV0dC+
	7y2BLgWFuRicSPYqtZ05z/I0UH89CmegqfEwF0rJtwSI0VkOHVNX0LpOGvIacdYx
	W96E1m0sCbSsG+cgOgRl8j7YdH6ZJQsafLBPSv0IDgsF0ZWQG4Sr2QnxEFqyq7V4
	pZi3inLWRgdmEJBqXXKeXW3UUikzp1hyh4nEWw5OTKcVogtGgC3+AQhbv8Zm/RsY
	WPVfunSG/ESBGC/C8ovd8Nd7tnvkh4Q6L7wlEdDMhZF9dA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygm8823-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 08:13:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b06228c36aso38476881cf.1
        for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 01:13:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754727197; x=1755331997;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O2W0/Uola8XxJxiRMnFlST/E5qvZKRamukaTM8REaeY=;
        b=u+G3Oop/Vtq3lvHcbjB0YTdLpK99peaTNhtyYWXANTfgSl5fzPB1zm1X4Y7SYhNPBP
         GlCLPHsiTwbSoowTZ4kT8hVf/HRNvUp8Fy3dfvjHQUwzIz1T+s7hhOJWPxt/jUAGuHyA
         MO+GalkvOHc6kOtOsXd23vavE47edfyCV22z6fUZ25qhD1Ymb3458l3duDKfO3t9VeZo
         Fhc/s7Z9E/OlgSGNlW+3VjPLNFZEk0vge3H5G+2tYMKzfSxKBPh/8pAG9QmLu22GcFDH
         j+TvxjZhjGdGckJ6oYsC/qREoIZXg7JFH4V33dPjSX8NFpq2WStZLhOR9gV9WfBT9V5/
         txPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe+/XjNjVCAvXhjUD8c/o4G0Jb2RIpvQM51X5AC5TMPg9xo8Hvgq/mxXYbuLNf8NeGeWF5crGAKgA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvsHAnif0tTr3g65srOllg0zKItuuEQJ8LjgQ1wspPiD7X6tbD
	tL7Xy8pYDEJHd7lBMrlTh8kW2HA23za0BtgkGZr0xC/4y9X5IS8dpcAv8rXkYfVnpP9KhhE9wz7
	lHWuQLRrfBm5qPHtSysYLWXqOuKXQ+dh8nn3kTKxqiJFbBRvFUfdh7lnrhKznYIwBJ2Hy
X-Gm-Gg: ASbGnctAuelXeFY8QKX4Duf8PkjoULd9mjwUegxSZt8Efql/vaa/gJj0Q0ZHmNVuBkY
	rbE6ymv9YzqQ+0PAM+8jkp/8925LGnzpNJu3kANE4WRMPxuD55UF7zRh+7a9rvJF2YnEu1uDlPI
	kb6q1lc4QSAABSWv80AX09nt3auRDXg213Mz5awZ+s37OicoUFP7Pi+a4MeR2GZ2NxLoxiWgt9c
	EMSjMca/rfU81iQ2StWuqkSc/nWDTzMhsubVaVKoAUwiNRJ/i7dvSRRuOUcmrbARVdXGxUu6ijx
	P+MFhdi0zdaHCwA7FpLSFzTV05m5M5F9wZOYvy+/M4/v5nnYwvHna5cDMJhWC+lQAnjApWHQiAx
	d7Bpq+FAbQRAYcFg9MuUL2lFAQ+7ZZ2UJh+ybASHEkjicWCzOMR8s
X-Received: by 2002:a05:622a:514b:b0:4b0:761a:6c2a with SMTP id d75a77b69052e-4b0aed0bfe6mr93340751cf.11.1754727196945;
        Sat, 09 Aug 2025 01:13:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGWYFgm3/KyGXb3VuNmzRZloNCLps1V2yzQNaYINb8ch8ribH0OaG2k0Toez8ZWQTKm+Sc4Q==
X-Received: by 2002:a05:622a:514b:b0:4b0:761a:6c2a with SMTP id d75a77b69052e-4b0aed0bfe6mr93340531cf.11.1754727196459;
        Sat, 09 Aug 2025 01:13:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc8592678sm169601e87.31.2025.08.09.01.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 01:13:15 -0700 (PDT)
Date: Sat, 9 Aug 2025 11:13:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfXwEYKHINOgMIE
 OteWEYCIlwlWWWM661r0gZzz5QiEcmQBcGHsVTnzB374WBeJ/BSYNimFt99nW+Ev39fQ2aEQ+Xp
 ZCD+dNAVx6d3vhEcr2YNQ6Im78AwS7Ufci8A1W1HEfTMAvy5FKRwLuWgXRA55CgYDpueLaBWEMh
 trDuejnChwUld21tMOid8rY0rVW6BZ4JAgG/MNVUfmA5y19du+Lr67pt/tsI3iS9aYWcSfCZwO+
 rK+n2+UMuTIhnizsqDrnUenLChhJZIifWWwfMz3nTg/VFdcPFWs+kAnIo2lcR0tLGEWEZtnUYGr
 NbzAJ5rCBodBdhnVMVtloeyD7sxR/iYlcpZsR88AaQwa8x4AyNABj3V4UA5oH4K8OPrgkL/gTDR
 GUG8UbiH
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=6897031e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=k9OlTz8o9ZlVdqEcvcAA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: hWDPbcZJSfGNfbGQuLRmdLzSUeKvP8b-
X-Proofpoint-ORIG-GUID: hWDPbcZJSfGNfbGQuLRmdLzSUeKvP8b-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_011319_152888_52537326 
X-CRM114-Status: GOOD (  20.26  )
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

On Thu, Aug 07, 2025 at 06:33:23PM +0200, Konrad Dybcio wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> [konrad: renaming, rewording, bug fixes]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 ++++++++++++++++++++++++++++--
>  1 file changed, 113 insertions(+), 5 deletions(-)
> 
> +
> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
> +		return 0;
> +	}

I can't say that I'm fully happy about it, nevertheless:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
