Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D083CA0FE6
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 13:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+08ax6uwmO0hpRb9PYDnplx8PMHypCyepuc8J1BSB0Y=; b=j4WScHL9NUvpmh
	WSlh79m4fyjlL7n1ddvT17ixp/C0cAYHGxCwh6eD0R3S0wulGFYCRVzcSaL0frWwyjKWI9rFSQazZ
	IFF0wyyWT43VSfU5BousviFZJfr/nxzuVizpnTANNzJafD4wXOGYMDWTJv9UtNjuKH1kBXWolGw0U
	p6zYNbu8iMuXB9dTiwmFaQAIFqbsc/uneWlbbBPD6D0ZgaqMXUmMfqTV9V0ievZ4e3brjzQn0NWe7
	xtEuMgRsng73LKMThoFMY+FZqnVQT8t7PT6HqlvE2Is5RxmrdQ5QV+sJAgkE3Sl7ph/YtkYc6Qhm/
	LYQTL7eilBZ+R7A8bJLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5C5-0000000H1mU-0e2k;
	Thu, 21 Aug 2025 13:19:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up25s-0000000GX3n-3mHM
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 10:00:30 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b9BB012918
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 10:00:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BEHubwHefQwrPqwhX3iHGRRX
	J/TlvHydnjvXdxeW7/w=; b=UJDL5LB9WOYnkibCHOzq+rrOD+RcdU+K5gaJYLOe
	yQuOBq2CFD9a4vZHWTnfMIIC9dMefUY3h5wbKD9wgLuBI4+dVjxRNtUKo3EJ0Udu
	Oy8Z0T+UFugboBg7OWS/DQG6oJ5ctOHJrWXq1sXMwjKTgA7Wj2/qQeu8gGvHIuhL
	szd6VVKzDc2kzjcoyMsretV51subasHk7+OSBTxxAIDoRKjcdCyPcxVhtZ1BzSJd
	3K3CIPwlu9hWMnmO3EaJI5X1ZTliZmb9LoDeBOuij0jh2/3Af+mFx2ZU/SK91ToP
	PddmZOndf+A8rqTHta4j80P9aRtol1giG6X6CkHjpKZskw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dmxan-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 10:00:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f654571so19303746d6.3
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 03:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755770427; x=1756375227;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BEHubwHefQwrPqwhX3iHGRRXJ/TlvHydnjvXdxeW7/w=;
        b=wN4KK+wd/nFnCKcbxsKelVV3a2FZ64tO5K47q1+dFk+dxSWL/2A54GPgrC7DZP9qDi
         4sRBuVC5REeIFNQABzD1fN9VfjFmNONCFmc4Vk9r1nUMfE1z/diCC5IAHfWyvVSgspdw
         bB3ARdwwv0tRPAYKr7x/sn7ye810+Vvfwp01oYbKR3FkQDp+ScRcwY/z1rBbexfN3uaJ
         oMhGcgZmEGp07+YaJb6aVSDJDEaLXUa4KfrdV7nwJUvy0fGursDs/wjiHbmhgtEVPFbx
         XZ+iIYvONpZOEaBZKSFdvX9DTAPR4pLwoyUukaDV1dvx0dW8TiZZruU4Cokhj54JlcIg
         71yQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbZYMF3HVip8E7rnPzROSjRpAhXZCGjyNN3nHXJw1tzE8MdCt7nwMyt2j5iJt7sBrhsGDhMombn70=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9GShi49RODUqh7aK9MIRuPdL0SBjzn+OigFV8VmNjBHGDB7ya
	6miS/ROpwWM9tFN9ILZAmW/DQ59QwF40jIs2YnzGA8A05U37VKaIPvz4Re4yfcJbk9VYWnAsheI
	xxvQZ8NEyXu7aH7kwS793FgXQoTR5BWsU/dEDNf0aq8dFOfAWobpk8hIgYMb5mto4OGei
X-Gm-Gg: ASbGncuUfC+BMI+3+BBr6X++EA/lJ7fBqCJWJR2/Tj1vvK6j6H/ZumrIvkugSvj61QS
	22KhNsPDccgm6PKSGU66EyhIP7wnvZwXzJhgvIqGCToDTvpSxXhiAGrBzJxoTeRaLj4VYlF0TPV
	YV7LieLQP5qhSIKItrQDHgIaYuKUzoctzaixaPRyq1rkE9UvP1y1W3q3g3OoMRxiZGjF9NMc7c5
	3gHmbtAn+h+vocY/bnn4oE1o0uWJKC6o7MIb9j3vE9AuDL9j0Mwq+1t3+BxDYUNAZ53VDpuq3sn
	in59+hpSoho7PIAvwMKCmt0julhGn+TIhplKNFZCC6uwqnQj8LjZ2urRml31sik8ppPLxlNlkAP
	UnGhaedGVuWQjFyuRfd6h/FH9BMLgxbGP/qBgdlII7TSjxOnPe5Of
X-Received: by 2002:a05:6214:20e2:b0:704:9239:bdf3 with SMTP id 6a1803df08f44-70d88f81867mr12888386d6.40.1755770425842;
        Thu, 21 Aug 2025 03:00:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7GWcK1Cl7yi0H9LNf9qwylu6UzN+J9gWKQiC6yB/eosOSwsmqO6HT7DI9oxpCQE6vFO0F8g==
X-Received: by 2002:a05:6214:20e2:b0:704:9239:bdf3 with SMTP id 6a1803df08f44-70d88f81867mr12887946d6.40.1755770425174;
        Thu, 21 Aug 2025 03:00:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3517f7sm3049579e87.31.2025.08.21.03.00.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 03:00:24 -0700 (PDT)
Date: Thu, 21 Aug 2025 13:00:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Wenbin Yao <quic_wenbyao@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Subject: Re: [PATCH v3] phy: qcom: qmp-pcie: Fix PHY initialization when
 powered down by firmware
Message-ID: <opdbvesy3gomk7k7fmtd5dqwycfc2wjdwhjrjedsud7zrxwnsz@zlmx5sdjdk6b>
References: <20250821-phy-qcom-qmp-pcie-nocsr-fix-v3-1-4898db0cc07c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-phy-qcom-qmp-pcie-nocsr-fix-v3-1-4898db0cc07c@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX+vjCuF4ybPTw
 ugDs2yP7NM2Fm7jKihAYRDR1W4OEk9kDZGoDLBmsCqwE+zV7P5Altom6ha5LLVgVUk4de+NR0H3
 p03i4RtCHpFcwLe5K103eTbi4e8mobHaWht0NWTmNadT2AEqMskTmracEHWgZd3xR4OrAZpMW8w
 qrJGbU/1EZ+KFVLZL7pRv+WOjWL5WU8Cs9XCiiyi5cFxHrlDji3IGKWzkSiU0dXd21ki5ZcxqT0
 yXuGqwEtuDCQacc88kExZmw9nu6J3+I6VExyAZx816icgUM+bxHIDrYAcDXhI1BgYnMlH3nrk/k
 TNV+B4WWOIOl3f97DKVH8qlKYlNN6nA7FQDNTYNcp6ksoRLBQeLil7bjNGScB80fJOT9N1ycwZQ
 fBTUnAAOrujAHNU3OX5UWQlBJNRBeA==
X-Proofpoint-ORIG-GUID: aomKCu6VEdVMYYrVcw-mZ5sTdhb9ey7Z
X-Proofpoint-GUID: aomKCu6VEdVMYYrVcw-mZ5sTdhb9ey7Z
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a6ee3b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=t-ghYzj4duJAONndmXwA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_030029_057009_7E36903B 
X-CRM114-Status: GOOD (  26.54  )
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

On Thu, Aug 21, 2025 at 10:01:47AM +0200, Stephan Gerhold wrote:
> Commit 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention
> support") added support for using the "no_csr" reset to skip configuration
> of the PHY if the init sequence was already applied by the boot firmware.
> The expectation is that the PHY is only turned on/off by using the "no_csr"
> reset, instead of powering it down and re-programming it after a full
> reset.
> 
> The boot firmware on X1E does not fully conform to this expectation: If the
> PCIe3 link fails to come up (e.g. because no PCIe card is inserted), the
> firmware powers down the PHY using the QPHY_PCS_POWER_DOWN_CONTROL
> register. The QPHY_START_CTRL register is kept as-is, so the driver assumes
> the PHY is already initialized and skips the configuration/power up
> sequence. The PHY won't come up again without clearing the
> QPHY_PCS_POWER_DOWN_CONTROL, so eventually initialization fails:
> 
>   qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
>   phy phy-1be0000.phy.0: phy poweron failed --> -110
>   qcom-pcie 1bd0000.pcie: cannot initialize host
>   qcom-pcie 1bd0000.pcie: probe with driver qcom-pcie failed with error -110
> 
> This can be reliably reproduced on the X1E CRD, QCP and Devkit when no card
> is inserted for PCIe3.
> 
> Fix this by checking the QPHY_PCS_POWER_DOWN_CONTROL register in addition
> to QPHY_START_CTRL. If the PHY is powered down with the register, it
> doesn't conform to the expectations for using the "no_csr" reset, so we
> fully re-initialize with the normal reset sequence.
> 
> Also check the register more carefully to ensure all of the bits we expect
> are actually set. A simple !!(readl()) is not enough, because the PHY might
> be only partially set up with some of the expected bits set.
> 
> Cc: stable@vger.kernel.org
> Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
> Changes in v3:
> - Move up existing comment block and clarify it, so that it is more obvious
>   what the additional checks really do (Bjorn)
> - Link to v2: https://lore.kernel.org/r/20250814-phy-qcom-qmp-pcie-nocsr-fix-v2-1-fe562b5d02a1@linaro.org
> 
> Changes in v2:
> - Ensure that all expected bits are set (Konrad)
> - Link to v1: https://lore.kernel.org/r/20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 25 +++++++++++++++++++------
>  1 file changed, 19 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
