Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81929C61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 10:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v64Z5GXxgfBRs8aIXE91S6O+3QiXX/J7UgggIur/380=; b=W7CSfi/PwalLfs
	1iznHcF+Zo551eLafpYYveOqSZrccM8IHqUNXb/3l6oan9/pgcAGo0fm7iJqneVp1INbboYMPjtD1
	W+I5yEC/mSoc4DhU9shwtc5bi2hGGbcthywjgkpvknfNRcCEWiEos7hi56PS/LN8MG8nq36NSAuD9
	W10KLdHZvfilI6OEacmbbZTEW/vuXS8JCbdy/1X9VF9iA04uo5nyEibAm8E+K9rCkrml4/9bwltlR
	0MpKZm3Wfvi4TIJHg376NksCT0fes71UcM/UvDfB7cqBpA+4cSGUKysxhGJVDj2uMNSuItGHpxmRG
	tunI3dvnCA6Q+gD7nsaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztfy-00000005YuR-3TUK;
	Fri, 28 Aug 2026 10:19:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztfw-00000005Yu1-1zzg
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 10:19:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA83eD3064260
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 10:19:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lPcn6i0GuP5FuV0mD6U8uId0
	cdgsQPaoW5qSq7vxMo8=; b=M6xso+rnVwRsZm03dOAyLUCpNanhCmyExRIO1C0c
	YDiyjeZFjs/ENnI2t0to60S4XPcWYdIvc7BdUOpQWsqCoI40ll5BOYOBgNcvjZHC
	d/JskZ/w4NvT973/Oiim7hRrPEtLEIhTkaoEekTsMFUT5wP0f/hNlk2tvYvqwEmY
	xACB+j3FtWbUiHnDkmE14j7VlaTskb568oN1RL5sCSHvD0QRpqJGpwTkyz7VIHpT
	asmbT0uEA2w3Sqe4c7lwk+R4So9v713Vc2t4Q98VZhnkuMRdOFmgniHGXYFvooue
	mDplJu0k+tNLUGHiiI0cfc+E0hcJLAHv+G4inS8IC+wQww==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb47n1494-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 10:19:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-934963b2bc0so79190885a.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 03:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787912347; x=1788517147; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lPcn6i0GuP5FuV0mD6U8uId0cdgsQPaoW5qSq7vxMo8=;
        b=N3YiCUisAsYlzXLRGFf2+Uw3X/J5VuD3KxMf6i3MIGyBcs7YkqCLqC/dyVitjctv4M
         QN916jBdIPwbuyhbuPMqWThvcev3O8eratUt9Fk8sFJ2Ti6TXP6wS0UaXIbcXdp96lHQ
         qvvy6Bln/DKdkOl6JOD1MPXRF1VkkF5UDxXT4kf5T4lrt32vyCsf4gFo/yD1m42sDwmD
         tQ8KLMpdjcVLFQ3oL3GjhbMu6mN2pbUX8KcnjLxaM9jnZbFuUPQc7suVBp3OwtEUqR2H
         bn1ghnPEbZKWyw5s4MrofNx2FVe+vIToI78NG6ufudfBFKddTwC+h+kcXuFyb6cVpKK2
         j8Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787912347; x=1788517147;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lPcn6i0GuP5FuV0mD6U8uId0cdgsQPaoW5qSq7vxMo8=;
        b=sx4WgJgAEi/ys0heeF/ID7CsYMc52VW+8Q3reE233RPucwCdhj3jfdMRsDbYRaKh90
         mhogI9lmm1+TFbUJaImBUvYl8EZE0Xsuk1/DY3x96dUJkoSifNv+LDCqCuLaQnNtXWmd
         iW+/pT0R9d5FZD4qAEbF77AMZ4GcwAIRLFlRe0RFcC8U4VcmT8vN8ScRZy6WBdio41k1
         1PNaR9A+x7VUAuKNLH2JjIOnhlwWXh3lrVg7u2reLes+gRfcETC7vkhlQqKFlbQ3vW60
         Nvi21wHLJxJfQ1X9jtJvF1hRQbFCTnFkkFWW7sMz0d23kyNOvHXxmE6TiiIp1UBoKqWP
         UUpQ==
X-Forwarded-Encrypted: i=1; AHgh+RqHqfLYw5+8LJOhjGMcJh+Dko9x6HQPU/3evuOWbTkcyOjsR5GvaIpboctALOiVhmVlZuvQgt705rg=@lists.infradead.org
X-Gm-Message-State: AFuF++lL46GRLhIOe4+p+ytJICqBKsUR+ctx8LukftPFChWyzDaLJzG0
	zseoz8jz7ChnJ7nTqPdSmjG7SIGXFZru1I++2q9qxIwy+jvntL/qEdKnw4O/Oh216BdIa5ZPOfs
	W8oUfJmwpcZz0l7p1IM23vXoocg4+P1Yqu9vjObEVYVTlbPUhqDsPkuBfnjz6LTmapsUV
X-Gm-Gg: AR+sD10hKLleYbAiGJrQinvCzEkbJ8Ir44N4YElP63g2HG3Kx9ahr2irlrWTFMkoubc
	oAu7wM8+7lvlkVL/da+eARDaS/W/37RIPkgTew/WZeU44yNhIwJi/Qc8QjMelYfbkgmHVPJ7l3q
	k30cWbPMfOV4shRRp+fpSr8LZD871DVO8470b+O7yG/uMF3bqXaF9GFKqciSACPOXXvhwsaFEpG
	WbjDDbwhM083SpsUpMeaxsfYm+uMUgJqezILn4ZuOn4KXT0EofDZJwXOSIKi00X3htM1BbZ6Fjx
	NvC49T2s9IBxBOGIIifZtwH7++rfVXrYkvSlsUoOVVHRLuQISv/Ur6DwvM9tooh1jSPQqILs6Vf
	IJvJQlQ21wIZhRQ==
X-Received: by 2002:ac8:5a41:0:b0:528:38b1:b547 with SMTP id d75a77b69052e-52fb9379da3mr66887171cf.8.1787912346609;
        Fri, 28 Aug 2026 03:19:06 -0700 (PDT)
X-Received: by 2002:ac8:5a41:0:b0:528:38b1:b547 with SMTP id d75a77b69052e-52fb9379da3mr66886571cf.8.1787912346039;
        Fri, 28 Aug 2026 03:19:06 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b92679be5sm45707765e9.3.2026.08.28.03.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 03:19:05 -0700 (PDT)
Date: Fri, 28 Aug 2026 13:19:03 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/4] phy: qualcomm: qmp-combo: Update DP PHY common
 init tables
Message-ID: <c76vte7k6iky26lm6gazhkkoojceykwkgt3fc5zw32kxh6uge7@vnpvkfyyjfel>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-2-8e73ce7c4636@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-glymur-phy-v3-v3-2-8e73ce7c4636@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=a8YAM0SF c=1 sm=1 tr=0 ts=6a91609b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=clBUptZa5v5FR042Ey+sjA==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=Oqahiz4U4qnBBrGiSRoA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: DkUBHPZnABEZteqY0h6-Hr0MfEzhfe4m
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA4OCBTYWx0ZWRfXyp026U6bHdV3
 UjN+eZmBMcHzsX2SJWUqbVFayGAYi42twbcKf6/1pFC0/v+fefXH5dX9/fxku+1V5KCnRCIOLg0
 GwBdo6PqIOw0z3QOXCMbvr+HB24lMB8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA4OCBTYWx0ZWRfX+4eNF1PLK6iB
 k7mGXnRM4m+hhTxMIhD1a5gBabSkOvLe8bf1vQLVw/U7vBnOb6lRoQL4Iot4w4SSg3yF3Vx7X76
 gKAc/qItlE2R5FR7+CjFZjfLJL1ekQF7aFr3g9084DL0khhXFHQlxWxvUGC+Fc5SogPKEjoTFWg
 7m5yUouowbPWhMv8f+buXGAxj3lNuGj40pdzzw3miXW872n9vtIIjZa+vi6SxRB6PTPMZFt02dT
 oPOk2N3BA5YrqXK9jNICUICJ/w6M5q2AHzWY+j5fTzH3SRQVlaaLQaGRuYT+PV5ECy6TW2J1tDJ
 bj3uQkFqUJQ3gaM5bHYH2Ix+KZMxIgPXVz6djcvFcb+l4BH5/tvrwI2gwQjfrewSIBY9q9GoHhE
 UeUrXgUGJ1qgmjonuZxRkJSwLunwvcPq+WGc1Mt8wvJT9iaYJM1+nLQyMhklXizt3RbmdGWR2DI
 MbuLIMed/a0gHAC0b9Q==
X-Proofpoint-GUID: DkUBHPZnABEZteqY0h6-Hr0MfEzhfe4m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_031908_634203_DCFE8177 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
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

On 26-08-28 15:13:14, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Update common DP PHY serdes and TX initialization tables with
> corrected PLL control values (MODE0 instead of MODE1), updated
> SSC step size, reset control, and various TX lane configuration
> parameters including emphasis levels and driver enable settings.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
