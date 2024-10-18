Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2917FD2FFE6
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 10:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHIALhxN8rgQcSTrELwCLGIqQYXJc+CsbbjAeL1xdBQ=; b=NC7beTfYzJ9cM3
	0kDZCcoLqFLqy+/supHEQ1zsIDEz+Ih2mR9aki0TLjKpPBRENrS12osnTdh2CTYQfmMW5jIZb86z9
	D+yyfxOrh5HCzr3HhdAK05iSxpx6V73HrTImRANEyrYzfS5+lB8xaJeKZ3U08+2haNSVqbw5H2Vvt
	Ne/10J+AHmjQ3AIAcpTXzoNLAe3eZNmlSdDN43bzDyqBA1e7BSDc+xuIWRVlyGlP1cAXwE3p170UL
	6jRxDp4Tqhu6FHtKigG0b1YRk0nmqzcpcWkJf7UeyuGRs7CiZr7drkw69imMS9mYg4AU2kikEX/7w
	I08KyqgC+aucAwQB5fVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1k7L-00000000Let-3KuP;
	Fri, 18 Oct 2024 10:21:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jwi-00000000JTn-0MRS
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 10:11:01 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49I8iI1J001599
	for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 10:10:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OXPIMmd9oqpiU+5EJi5igCXiHCqmSyos23ulQ9gEwq4=; b=o5E0K5oFjiSKTcOX
	9gdp3dfxDqExP6bQ31GIjBJ8hCnA1VujrvA1bwGWq90IWTWFjz8Lpmh5RxQP7rTZ
	LA5PNTE9Tae7W5tRErXWvDh+LeBRx0pnckBWd6cXDv49yzM3Zd0q7EQQRP+Fl/XM
	ah1JBG8TSD9ko1gU+yKXyijL0avJBrH5rZURXjOSBNdOYA+G+A+cbMPsKSM76MMr
	3JnWYcvm4QC6g7dvUV1JZE2wclwo5UI6ZSJyoD9wPM+e8rJ7a08sLkgbKYoWhtvS
	Cypv1KrNbkOi3dKoQCiC2ouTONSxjLoANyEuOs3C+2oaLKlotSDHf+CWQ6kBRavj
	XLBU5Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ajm5dsuk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 10:10:58 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbccc4fa08so3701746d6.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Oct 2024 03:10:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729246257; x=1729851057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OXPIMmd9oqpiU+5EJi5igCXiHCqmSyos23ulQ9gEwq4=;
        b=Cv8wCV9ljcf11shJ9a4P3prnpmPBnTi3Qykwz6w4p5wMRj8qzCjdSs1XhoQC3eMZOq
         nx2M7J6nGBr9xTxxVLFWsfgoUGzm6JEGrvPOZgInb/2+fFq3AIthsKHtgYHllkiw6sy1
         SjimhcGw6U82637DS7Qh0QNUJ5CH0d+1U6QtCA2wHINkblvKDVPTJ8RlRrhCGjQsq3Mb
         cri4B89k0h9SEAi1Yu6QoNGIYQwbmQW6ufcIlbROnXdJm9C0NjmJ1c4QhIUD7ZY3KBtc
         7yZ91N0633zcQ+pWyxOOBALFTCVEU3s0SrVYOa8uzFpWkFmPp86prsBJ6wo46zQmo4E8
         b2xw==
X-Forwarded-Encrypted: i=1; AJvYcCUBDw1uo1azpDzZ6HmadMzyp/cGnSWmgK2fOU393+Rl2BrOjlyu+u69Y41IiPVzeHWSpoffPw1hhlc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwyN4JmgjW+Kkh83sujIJgi1FMmtaEyn2+bb77M3p+iI7MUtRMC
	zxc04COqXTt7Gk2oMW7B8Du3g2vG4Q8muf1SoySOIw3AWyuQPRujHAMsiUmGn6XJxiD2jDZnFNj
	atspMlzFNu3SPF4WxCv19T4hCrY8WS3mhYevl/E79JPdyokOfgLXxCGttHGGrAL9P
X-Received: by 2002:a05:6214:20e2:b0:6cb:c67a:efe8 with SMTP id 6a1803df08f44-6cde1669439mr9594716d6.12.1729246256661;
        Fri, 18 Oct 2024 03:10:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8jTJw5JnqOjmxBso/awk/XKCbh2dxRKjYIFmIjcpQmKruPvbZM706UA18QnHB/2tWFCQ8IA==
X-Received: by 2002:a05:6214:20e2:b0:6cb:c67a:efe8 with SMTP id 6a1803df08f44-6cde1669439mr9594456d6.12.1729246256249;
        Fri, 18 Oct 2024 03:10:56 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a68bf7173sm72992066b.167.2024.10.18.03.10.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 03:10:55 -0700 (PDT)
Message-ID: <bb73e6ce-537a-413e-87ea-ac8256313c46@oss.qualcomm.com>
Date: Fri, 18 Oct 2024 12:10:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add support for DisplayPort on SA8775P platform
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org,
        robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org,
        quic_parellan@quicinc.com, quic_bjorande@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
References: <20241018070706.28980-1-quic_mukhopad@quicinc.com>
 <vtfz5vteaedwrqw5cpggmd3esi2rky3f2axubxukh74wdux4uy@zdac7miws5lu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <vtfz5vteaedwrqw5cpggmd3esi2rky3f2axubxukh74wdux4uy@zdac7miws5lu>
X-Proofpoint-GUID: 2AeeC-x8Cty2Z6DY-T-YNA9FztkN6niX
X-Proofpoint-ORIG-GUID: 2AeeC-x8Cty2Z6DY-T-YNA9FztkN6niX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=895
 mlxscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1011 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_031100_171787_7EAFD932 
X-CRM114-Status: GOOD (  17.13  )
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

On 18.10.2024 12:08 PM, Dmitry Baryshkov wrote:
> On Fri, Oct 18, 2024 at 12:37:01PM +0530, Soutrik Mukhopadhyay wrote:
>> This series adds support for the DisplayPort controller
>> and eDP PHY v5 found on the Qualcomm SA8775P platform.
>>
>> ---
>> v2: Fixed review comments from Dmitry and Bjorn
>> 	- Made aux_cfg array as const.
>> 	- Reused edp_swing_hbr_rbr and edp_swing_hbr2_hbr3 for v5.
>>
>> v3: Fixed review comments from Dmitry, Konrad and Bjorn
>> 	- Used a for loop to write the dp_phy_aux_cfg registers.
>> 	- Pre-defined the aux_cfg size to prevent any magic numbers.
>> 	- Added all the necessary DPTX controllers for this platform.
>>
>> v4: Fixed review comments from Dmitry and Krzysztof
>> 	- Removed the "reviewed by" and kept only the "acked by" for 
>> 	  patch 1.
>> 	- Updated the commit message of patch 5 to mention specifically
>> 	  about the validation of "only" MDSS0 DPTX0 and DPTX1.
>>
>> v5: Fixed review comment from Dmitry in patch 5
>> 	- Aligned the register starting address for display port as part 
>> 	  of device description with respect to other targets.
>>
>> Below patches are applied:
>>
>> [1/5] dt-bindings: phy: Add eDP PHY compatible for sa8775p
>>       commit: 7adb3d221a4d6a4f5e0793c3bd35f1168934035c
>> [2/5] phy: qcom: edp: Introduce aux_cfg array for version specific aux settings
>>       commit: 913463587d528d766a8e12c7790995e273ec84fb
>> [3/5] phy: qcom: edp: Add support for eDP PHY on SA8775P
>>       commit: 3f12bf16213c30d8e645027efd94a19c13ee0253
> 
> Please in future skip applied patches instead of including them into the
> series.  No need to resend the series just for this issue though.

(you would normally do this by rebasing your tree against -next
and having git rebase-skip the ones already present)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
