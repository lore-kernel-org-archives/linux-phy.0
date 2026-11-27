Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3998606A333
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 13:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dGAfzpL6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=TOjcsKcu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GpUgeGpA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Adw8HMH7FxI+BBwMbl1gmRic43cC1QkaDWSJqRYAy60=; b=dGAfzpL6Kky/aeHj1oboH8n40p
	EcVMXzEw2EJivJKFJXLUEtZhQIOUDitrCmo1S24zzvgotlwl4rNGnECx12chjGUhp5VrqdkJ8rf5q
	ZCEBBbunWyl+C4cugLyR860hA55wk+r7nrn2pIl9/8pBruFz5ZR1kNgcZV+yxIvz/ApuhoiFRxWQf
	P0Qgymc3bztaugU2j0k8ySL5Xu3RC9MwsJBftTqkwoRiZRrDIZivKlTZrdtfRxqYL8O7nIScWa5QP
	+xVYk1oiAVUK/3pm+nfiNw/CJAelhX4ESPSec5dSJn5qJGQyC9hW4x2s+n3tvMJgQmhX4RFMyLPR0
	hG+2aO0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwTS-0000000GJyg-2mmJ;
	Fri, 27 Nov 2026 13:58:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwTP-0000000GJxP-46kD
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 13:58:49 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ARDuvIh1781237
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 13:58:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1v7qWyLIaLArgF+vLRv6x7RBzzWwcYRuKaCCg84dQ9A=; b=TOjcsKcuDkQqhKEM
	pY+66B0jBD0y+w2WuxCnqNyxwYqmtuMoZrTl0cJPLd/mTTklLplbhyMHb4TC5Wtq
	Ji2Qk2dzyLEh2cMIRuDPdYHqZpE/N6fX61D4TPWfBAqekwTKIPscpXnW+mrJEX1g
	T67dFtRLf4IjNGcPXVhIvoHFM1MztDlxyVpCMHvcXvYw2hHwPLywFmqnznbL2nOM
	sz22SEUOUEnjiVdwNO2bgpnoMVFCLggMv5jNCcGehEEubP3PBl+8lUty7whgbc4y
	8od1uEnUK+wQdjbAqIyVdpYI0rzoM6UghTNlC4hv0RttWqdHeAoj6pqD+rHn22WG
	zHDzIQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6ru3atnq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 13:58:47 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ecf0967947so334124e0c.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 05:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795787926; x=1796392726; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1v7qWyLIaLArgF+vLRv6x7RBzzWwcYRuKaCCg84dQ9A=;
        b=GpUgeGpAwTwnF8pBzjtkpC0EPsTamUOrkc+oAFHQqqB8xV47lOSezPQ9TST9o1Ga0K
         0YxspptSYrmlw1gPhAj4XFv/ZjbV6nyinDEGlT4oKA8NHRZ3T65Sl6zxJcUaE90JriYW
         i8ikPvwBR/S0kMBjNbsFwj1XXvcWhsw7w/CMu/ix+SwUb39SI2j/dHcvyV2+RgaaF1G+
         i97DFi+fPqLyjH/AHy0hQ1uLBpThROgJiqjthSPnLs39fq/muRRkGjGJBDL4iDhtUrMq
         R/hFl9t6b1eujahhCKP2hnD8VtCNU+h6iy1M1Pn0hnGvvvk7daY/dPlpvh2d9y3FDcZS
         4fPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795787926; x=1796392726;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1v7qWyLIaLArgF+vLRv6x7RBzzWwcYRuKaCCg84dQ9A=;
        b=ovRaBOBMdZqV4XiaN1DyV3fm/HIF51knGm6tgBGn/su2LwU7vn9jwfgTSrIPHfTwZ/
         7dnd8gTrWFO3EEMW3NmQAws/OI4eU2hrgslKfC9Vzu3OTAH/07a+UwyzMMS8WSeUwMeI
         eUAeNNWeU0fr8BNFtBHBTdByJ6WJAQSV5yOthH2SMIrPWYwl06piUrtmY9HcbYrqEIsN
         6mQgDyCLcsW/lzCb+xX20OZfOMy3oLiV8sn3viNtli28IiGeT1einOPS3cyiDANDqPLx
         RSSNih3sPFgexCH0whiCEUh0YPtKmvdpmDlSptwIJYLOdkNIBntdC6OYWqhSRcO0vom2
         vX/g==
X-Forwarded-Encrypted: i=1; AL+hErGGpnEF0XdIQ9t6uvHxLTjMVA0O8rSlxX+pfXc36dvi72MaU6idEHuMpqOSGomZ4kbW6t9T7qpoUDw=@lists.infradead.org
X-Gm-Message-State: APuU4Z+TIFnbL+JnSNWmEFxx/rA7danqN88jSCl06o/4QS2USty8l08R
	678ZbU1DrdvInMpbHH6ZY4UASATHpZvDVTcQqxWuP91x3aj5WV4vMF+OG7MV3Nyxq+SxcGLhft1
	EM9eEP7XxWntlCnN0N5RQWHHaQ7vnzpy8HzeWvhBfcDeq1bM6nEOMDKkUJP51jPIc+9Yo
X-Gm-Gg: AZFdTZesrcwY/RE1hQq/3HCDrrBTO0m2dmFLtyh0nu6FDbaaQjFFHFW7RmTFE2jmI9T
	xFIsL5PtvL0Bkkis14v63Zp6+rFu2pDL39P1o7FBT17H1zyyZ4CcK1UVtSQeIqGnh6bty5vfo1z
	nw8X0HNliqg1XAmPrZLdPz/ZjoUuQfZeabRgFQY5s6WpSbdgeQC92s3vzbAVzuKkHMpnPQwKNPz
	gIfY5vz6+duHX7KqWhJVEFbHUZqRABceFxBkdp+Yu5DUbMRDOJwAUIZK57v3MVWiYtsPtsEvavI
	ai2TbteZCxj07CVT5c02fArGCxOzleDzbSTarVoYwP2COSnzMRrATU3R9BHLxSHaHCQGDEy0eWu
	zcAiDcZYGGgLPUEjxGbmXO+Bs64K+Q7ozd+EFhADz81y7P3ssfKzcK4Zn0AxF7634WWHtN1c=
X-Received: by 2002:a05:6122:c2c2:10b0:5ec:b706:37e0 with SMTP id 71dfb90a1353d-5ee8ae3e277mr16434848e0c.1.1795787926298;
        Fri, 27 Nov 2026 05:58:46 -0800 (PST)
X-Received: by 2002:a05:6122:c2c2:10b0:5ec:b706:37e0 with SMTP id 71dfb90a1353d-5ee8ae3e277mr16434775e0c.1.1795787925770;
        Fri, 27 Nov 2026 05:58:45 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ba37109b55sm10578803a12.32.2026.11.27.05.58.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2026 05:58:45 -0800 (PST)
Message-ID: <87280d80-9047-405b-8dcc-11276d34d2dd@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 14:58:40 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/14] arm64: dts: qcom: Add Samsung Galaxy XR
To: Stanislav Aleksandrov <lightofmysoul@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Thomas Gleixner <tglx@kernel.org>, Radu Rendec <radu@rendec.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Bart Van Assche <bvanassche@acm.org>, Bean Huo <beanhuo@micron.com>,
        Stanley Jhu <stanleyjhu@google.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, linux-pm@vger.kernel.org
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
 <20261125-halliday-dts-v3-14-5c8311c0b70b@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261125-halliday-dts-v3-14-5c8311c0b70b@gmail.com>
X-Authority-Analysis: v=2.4 cv=cOF1IVeN c=1 sm=1 tr=0 ts=6b098c97 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=pIfNyjNAQl_vEFP8Sf4A:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: w3kiWTcvLW1n9P2gy_i-7dJrkX_1OWby
X-Proofpoint-ORIG-GUID: w3kiWTcvLW1n9P2gy_i-7dJrkX_1OWby
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI3MDA1NSBTYWx0ZWRfX3tnZSgeCif+m
 BWT1XqsXdhIDxVJlDa5U/+SdN3llCOi0QYt9RAjEFQGb/873ZV5qY3CkOPlNJO/BVxVTL+TxApw
 0CioXpm3s1NAm6xb4/XcxkSKIB3g19tdMESDuXetx/hELpEIfw2+9zk3bIdDyMH2maEqX/eLaCi
 0/T/X03+tqSqfLCTWlPG+rBtQ8aytflC+fWJzE6yQi466IHQiyZ1caUfhYwVTATQ1pRKCcnYu/6
 TyZ7/1wI64XXNSS+NagtJ6ReS8bFuY2tmHn4xindB9+d+ACFse5LeQi0aMQ0pohM4Yb+OlubD1M
 9Qw+g+PAqXV1PvNsHgZIXPjnAOS51SysaCjmO1VRN/HSThGEV5doMTzfSC4nYzWTEyMlelHha29
 Pj7t7UOn2K97CndeMRJjRs+X/OSnCtOSO3D1YGSLDDJdq1HfeFLOfWec4PeHc74+AjV4YHpZZvG
 AJfhgAtS2mHjY9NLJsQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI3MDA1NSBTYWx0ZWRfX96MTAejqu3xc
 w0hq+VdFijLqIcMUqA/RMmKB3m0SoZB9yWgLnEGckgAnnrfxkolK96Z9uw4Zhng1O3A8v69tlCY
 Q/ESvZ97vY0dWQA6/OP293oL6dsuJe0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-27_02,2026-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0
 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611270055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_055848_015886_6B9CD0E0 
X-CRM114-Status: GOOD (  11.54  )
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

On 11/25/26 4:43 AM, Stanislav Aleksandrov wrote:
> Add the device tree for the Samsung Galaxy XR headset, which is based on
> the Qualcomm Halliday SoC (SXR2250P).
> 
> Supported so far: the PMICs and their regulators, the power and volume
> down keys, USB in high-speed peripheral mode and UFS storage.
> 
> Signed-off-by: Stanislav Aleksandrov <lightofmysoul@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
