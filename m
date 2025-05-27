Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9752EC5B542
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tN2A1VbLGjSGf23fl6OdeKDHSnwzX8BpkybPaCjDGTo=; b=qK/R8PxEQhbTDu
	6QzkBz8kDAdVZfbRUBTAKhHqwVNw2SN+2KNoCWYAqilv8sjtPBUQUjXFiFrHQUcr0shpLa0ud2BUX
	YpdrytAuBj13hCueRYTGnVNE3gKnsKMy4Dh0QsfK65FAiPs2A5S27iB7+AfaUTCls/c1zMe3WZeCp
	5giKOL7zpP5YUMNp9ocj1RP5584gbylFCSlmU1GJVulMtwpfNrnIJOGnaRvNBECnDtqV0i3vmPM7Q
	aSeUFTwY1RF5hU20Vie0zFxh/wEdnER6UojvgP64MZTD1fc7U6L1bPldIm3zKLxoSj/tFeZd95z8+
	utCW0188XCrGTm8AOrog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1SN-0000000BYcD-1Cyf;
	Tue, 27 May 2025 21:03:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1SH-0000000BYau-3PqE
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:03:29 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RHGGUw002206
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:03:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VsOv4br7fd1T6CcMRlB4v7ct
	hk2voXgCn0Av/3vO9Do=; b=PjMu0JTkWX93JZ3HTHCBYQzd1vRiwiscYkhKM6OA
	vbA2zi8u+QIa9/JxmrbghIdXjk0X5tHm/K01LCekhYvfFKgBPseU7ikZxCmwr/uo
	vTZX+IpPgzJ1/RvuDxkgfcDhgzDeL4J0vCzx9R0FQND8N06wlemN2Gz45A2g8SgQ
	Yosbj58Yqfbp2tRuYzwPxFukE9dl95FCkN6jjCDnN13XnLMYgBEtTKuiXu1nS4I9
	GzXsnzNpL0x+DEHs0k3jROXjl30nydYi8z0X/YK1QUwQAj9oPjBjMuG3e8ELFeS0
	APPgu/EBZlgqQ3BNLAS/+2GE5fvG9lsM30neuc1DaqsTpw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavksya9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:03:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5d608e6f5so940981185a.0
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:03:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379804; x=1748984604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VsOv4br7fd1T6CcMRlB4v7cthk2voXgCn0Av/3vO9Do=;
        b=GMhqItcB5L7UV1fplgKeSDlJRMZjf2GI1GbG6G6dPRoEipCPecF8dHqWNxZ27W3Anz
         GLIQdbMJkkDTr1OcXUk7tXLwRUyBj4V4DXQLsV2gmb0BZhaIYSbf8JiQqyojM6dKE+wR
         bk7rl7yF2zm1rJzl3MH2UBdUWh71evHrYVHyjsS0rcqUYw1ydtVcarxO72MGSZPGD9TT
         S80GYhPSNLxmjNWyl7QcrGIZUToK4zGbCIkeiVuheaMCdJSxLk13UkhEhZ+YS0juuaaZ
         rabpHlZsdOfXKLg6pXcxbL8W14ZZoMyy3FeUSGZAAy2/9vW3RJC9sYGEYWOVNW7W2lDr
         VsWw==
X-Forwarded-Encrypted: i=1; AJvYcCXZ0bB8hvL0YnGORIu9kue4cHwzfhduL02EW2F4Zr4c/CzrZywj6R1zB52PV3aKpfZsyebA4E0WAyE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYEISPKPoN9QsPBFcIruCd4nE8klJ4PtSJgPYxWLuD9itUJO28
	5tf3opWqI1IS4GVbjpGkq5dVjitnR89wOOqEDB+bG8Yjxz2u1CjEXrINsiYlEpGxZyvdNKOMSCe
	dywPZFlzn4ekDBewMOhqSCOwp37kXrHP/EmlextAc8wQMIMOVj59AF2WchGaUReoj/jIk
X-Gm-Gg: ASbGncvQwGvrUWxA8focETajEWvnV1DQpu83qJulRP8ACZqPVvWuBTlnrx7fBaJrbH8
	imAVc1HRNzyU8nKLcRCJtNDbIxIba0omdMWvHOUGWxwRRWc2OEN4JyjVWadUzzSf7SlXfjUh9js
	vFy3l7whx4YjUIxoW9SW0/6sfWfPUstKNLwzefQx4DAzfT8dY4dEWvdGu+zwRYcg4U5noJwboL2
	QQYvmibSOYeXe2e1OTnAhC2WBtOMC3Ts1dY+8AMKzssBX9Hra8+31g3dIGumdAi+dLmd9CiF8aI
	6AS77GauBolDUNz1wS5fthUo6ciTHUKyfiUMGRfuA/Gy0fVnsvwkTiw7L9mCqj51a/glmrCsxCA
	=
X-Received: by 2002:a05:620a:1794:b0:7c7:bac6:8b7f with SMTP id af79cd13be357-7ceecc2d5cemr1965854185a.45.1748379803802;
        Tue, 27 May 2025 14:03:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHey2F+1GmRJLbhJPjMP4o/YRYtrCtiGE60Hp1Q7gbuk7nE2RxX+76V8r4hyZF/SGD9E8GdQw==
X-Received: by 2002:a05:620a:1794:b0:7c7:bac6:8b7f with SMTP id af79cd13be357-7ceecc2d5cemr1965849185a.45.1748379803410;
        Tue, 27 May 2025 14:03:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532ee738f9sm25865e87.237.2025.05.27.14.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:03:21 -0700 (PDT)
Date: Wed, 28 May 2025 00:03:18 +0300
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/6] phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
Message-ID: <syuv7z7llocqzqsg7k4chd2lejnjsv3fzgif5eumxkp3bdtrrw@vheqjejlyxgi>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-2-f9a0763ec289@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-2-f9a0763ec289@oss.qualcomm.com>
X-Proofpoint-GUID: 2hz28IsP7ukpLzUBnmwOVi3aQl67Q8fF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3NyBTYWx0ZWRfXzJirRAQJ2rfm
 YIFmr6fTyfPtsN65QQOsbJ27bX5OLqljAzyrX1VtrpVdoaXxaXZ5a/YRNlYvYpos5y6L19Bss/c
 YeymEBGQBs+YoptCczdYaorx9P8p5CXmeczzbbLoc1FUTOhm6RgYGsRzqa1KLPwA1V68b/jEay5
 MLd5mUKaghQNbxRKoFgavrSp3zCny6ajdB/jlQSIMURZa1PF3vI0DFuCU2dt835JWLSHB0rnUZe
 uCG8BBkqAtP0eqhP+Apk7zLZVP9WIdtp9Daz8KQRmBMcJ1wk3SBAbUb/KM2Zj42wtE8y+4Fsn6p
 wiCgmjQ6jyBxC6VG5aGiuFmNDZ4sRLbK+6BNUZjjA1xrcbirXgArkH9UL+Ts0kJMxCHFldLQvjR
 D6C4NJ1/MXIQ1HMJ0HE7BlZ37/jferbOzHrny6UnicD4rCNN/wGbwlhSmdpwEkWnS+EJeSLf
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=6836289d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=i4r9q8SyThEWzBBqjdIA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 2hz28IsP7ukpLzUBnmwOVi3aQl67Q8fF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140325_865898_A99A5D38 
X-CRM114-Status: GOOD (  15.03  )
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

On Tue, May 27, 2025 at 10:40:04PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There are a numbers of ""modes"" involved: USB mode, Type-C mode (with
> its altmodes), phy_mode and QMP_PHY mode (DP/combo/USB/off).
> 
> Rename the generic sounding 'mode' to 'phy_mode' to hopefully make
> the code easier to follow.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
