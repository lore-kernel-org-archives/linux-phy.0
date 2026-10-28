Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4522606A324
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 12:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IA1m0+02;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=nTzg8f1k;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UJftCA4/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=k3fv7JKCkPPAnUZM8fCFjBjYc2yFy5bDiym2/H/IwAU=; b=IA1m0+02Lji8qQqMFDcqqKFgiB
	AhBQUiXILS83ZJGYEgL/dGfOZYjWoG150UGkNA7IJAbpY6EJ8cF5wb1nnWE2FO5RyvNwtcOXSrD+w
	6wyxTOIEDRvGTLg0+CCFPhx5NBsYhy/WksSgyR7gv3GgG9+zRQlXxTHPCdv3U8wTrxG+lkmSxNKrg
	2hn29eIMP/aqeDfoMAJyuOIK/TTtxX+MEYLt5l8Zo9VsP2mDr4cPIiurZjRXd/lKXNOOr9SfCSKHS
	ggSc0WCtqW7pgUPNKPcaaqHXO0G3Jb3pdJwmijG4oug4cORHnROGa5ekDaY+GV5VJE3gf/7JbwVsW
	JIFE9xXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2l4-00000006xON-1XXQ;
	Wed, 28 Oct 2026 12:27:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2l1-00000006xNI-206Z
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 12:27:56 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBe0kY505071
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VSigMjbRxPUPU+y0wEyfEBMw1dQi5WR+SlH5DUgFnsY=; b=nTzg8f1k4cwxhaKx
	5fu60NUzGPhHwKZW1SnkcNjFlFcn5JydUt+hiRDcvRhDGu7StCF+gzSjUBLfP2nT
	O1w8Tfb4ueSXu9PIPwHj6TuSymEjfmMZwR3acfNEiQL44XYiRTAYXMQdKC8yz++X
	ORtxSuVofP6Gp3Tda8nP/hRxrQ2HhfSkjkajIuC5SwxD9LTLaz/l30Y8+irpTGAF
	3pllMWGSTWMBXwr1cgfbu1Y+SyHq+3mp+VQS6q5zpZVP/u+Kofo8ovBMaI5I0yU8
	Z9QgZZzaifv8pUUZmS+unC49ntSZu1qins2SF21iJ5+dm2dWrK/p/xJEaC+l4S2s
	qV7E+g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjy6g42ay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:27:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93cb1091fffso12085185a.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793190470; x=1793795270; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VSigMjbRxPUPU+y0wEyfEBMw1dQi5WR+SlH5DUgFnsY=;
        b=UJftCA4/f6kFjDjGK2VvmMwVII3RgjQzFLtk84DJuUaGdIR3FfNlorRm19+by2DMTb
         Xxazwm+ZvJ91KstpHMpgbaqp4hxfyP3JeRN45P1UiGV6zp9CBiJLeESBUAqyi7Z5kSCA
         RRpDxweXTauBo/SulSCVUyaVt147b3a7HcKL21Y4MO7XFpUIxAqS1hOOekGMDShhysu1
         IQqWZK6UpWMtmrWBY4K++Jc5rnwS+JBIF3IIKtHP4gLhqPcMVLWEKvdLd0+aN7EY495c
         Wi8T1lTc/8XovMY/8fzq7S0wsSQRXPFBlaZOJ/LzCyE5LqRKMLV2HsDhlwXJ2qipdOCa
         E/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793190470; x=1793795270;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VSigMjbRxPUPU+y0wEyfEBMw1dQi5WR+SlH5DUgFnsY=;
        b=PhExVJEdXmNit3e/nAbSobWurIJJauHv9D6o8jzq3kFExhEdegs0QBINTxfA70D7jH
         qfERRxULRSK1kCPM+mPnw50FqNJc/qFfAu2shPVSSJZsYJFW6RL7tqxmjUPnrw0qEaN7
         T8wPqYKmlqTxP3/bd1KiPcud+DsSYTUIEXtvCW4o028AbqrJ/PRw2WUMgCdfvvv7D3MQ
         vk0qEjtHNWiwhZvO31rMQNxCNBM3vmMwwcmT1J4S67a97Gw1n8mFRHuzHdGXu/4wD7XC
         HynfsBuwFN6ZhytVqs5Upj013//TOly7zkJVbvojbm/DvG8CjLXHjvWjYfjF7m4BYx7Q
         SWAA==
X-Forwarded-Encrypted: i=1; AKwUvBwKR1girWZrPV4PAW2zPAUNKqkPQVBobrFLngOUOkovtMniYNlutqdO+5ASM4D8gm3wj6BzH5e1uNk=@lists.infradead.org
X-Gm-Message-State: AFq9FYJebqD4urdqpJdHrwZ14AVfeS7wilL9h05JMQIFD5tuRZD9WTBG
	YZTME4W9nFxBD8iRhv6NV6bDNtZiHcDos7UBigebnwqm8uLj/+iOzqwlGYu35l8Iv7gIxMJLFBv
	GDYOAipdSJEI3AzTvFCuJZu8jcos2+CfGRakp+uyKntDAE5CKx2kiZr9uogsge472l/XH
X-Gm-Gg: AYBFou0fHQZFQdIrC8ANnWBX4cBhnVRKbhXNc6ds2GFtLhW0Xa+3+87Im/eyRvRwUBY
	KY+R4VKbc5iHkD83ofAivzVQMnkUtmdhAlwRga5vTwGnyAQzHxiaVVnpOl3HGef1kutPhK6+3ZQ
	PYOETpzGsOmdCKVfZGdXomxWnzUOrXy9CKAyodvf23IVlGqG7yE6r+P06L8KyYy4svy3bpivS79
	n3TCA8V/wXKNwCbV9+6q7+YvwZl6IMBe1iH3xPX2zcd2NMkbBw1KzFD3NVyP6DPDuZqY03nJfL/
	jdC7VqSC1W0Lkuviwclx1DSHOgstpzR8uV6cH9o3GtU11spZy7cg4EpU4JfNzjZ/XLe44/LPNqK
	S9hcgHlUp4EJvOIlvDNJaEnFsGsMGyduFkHfo9uYvhPYEJ8MQ+j470c/lKAbTGxqimQRj4JA=
X-Received: by 2002:a05:620a:6d4d:b0:93f:211f:7ba4 with SMTP id af79cd13be357-94408d629aamr300069285a.5.1793190469697;
        Wed, 28 Oct 2026 05:27:49 -0700 (PDT)
X-Received: by 2002:a05:620a:6d4d:b0:93f:211f:7ba4 with SMTP id af79cd13be357-94408d629aamr300065285a.5.1793190469165;
        Wed, 28 Oct 2026 05:27:49 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46bd350b52sm594839066b.7.2026.10.28.05.27.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 05:27:46 -0700 (PDT)
Message-ID: <b4f6fe92-6d72-4987-8b87-b66e28e4678d@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 13:27:42 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] arm64: dts: qcom: glymur: Add UFS nodes
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
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>
References: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
 <20261028-glymur_ufs_qcb_enablement-v5-1-09cda5e3bab3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261028-glymur_ufs_qcb_enablement-v5-1-09cda5e3bab3@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX8hp29xTABswo
 zhoaUHkoIk9g4nbL85kaht01HpJVGUm+tEMjZTma/CTQ7tnubX1pXa276yxGSggB4OUzdldMAsN
 B4MGyy2O/QCjxcov41lEjsmDcmN0Uvo3VWzWylFzQTDVe91OluqGZLrzfjJlrn2TFNUNh3BDfj7
 y5faV5dJAGxo+7cvqIXDV9FuTnqE5Ds7KEr+1gyde9/4bt5+zqLiFdurX65bR/ft0JZvJGXOWxa
 aJM2Y6ikj2oGqdj2gqhwSa9pB9JVsX5yB6k37rELp6ji0XLojivQpqFtU9umiHGNE+TWLNQH191
 T8XkjZJEHwiynKv0D7BVO2+/Gge+gsW3SzaFur+290ajjdX3pty/XkRWJ4aMGUOcbVjjAZCtfoh
 ASk1i/ck5mKETyLVoFkYUoC7GsJ/sNqYbPHUiFmsoh2WpYyuRhnib5h6p7u5/YJxQmtDVp12j16
 v+tJokbceIWe925nwzA==
X-Proofpoint-GUID: HP1Inmn0xXeDMT7Ftimw6F65e4GwCDE9
X-Proofpoint-ORIG-GUID: HP1Inmn0xXeDMT7Ftimw6F65e4GwCDE9
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfXxxh7EuYWGRqd
 gL+LahGI3xHwBAPsjslnXl4e2LdDUGVFmVIBTi0yKxZoVq/WgG+X84litZRVGvGXcKSNYou01MI
 /sc3sZECphGfUBXYtdwv2MPDUOgPxDA=
X-Authority-Analysis: v=2.4 cv=dKgzC+Zb c=1 sm=1 tr=0 ts=6ae1ea46 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=hjj8zCE6y8JCqPeTDGYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_052755_529863_45B4E288 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/28/26 1:24 PM, Pradeep P V K wrote:
> Add UFS PHY and UFS host controller nodes for Glymur SoC.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
