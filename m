Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C08606D814
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 09:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=M/Mjr3Y/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pwdU+FhC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=e+1eFvCr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BiQca3D2m1/1AA3/6JZ+lq9fA/UKePkxLjhHg7recR0=; b=M/Mjr3Y/2o7dJAzKl/K0pYBt5U
	cYJRiIC8iobdd65/NtwEIo/CyVpB/l290QHl4ojr69lNoFkFz29CflBm2dAaBOig+sNyahMR+NAhG
	v22kDSBC6NCXS6f7Lkg65+N2+ZyQQQKqUFQjrQX/lfrtNAcb/1X7mpgaMSi2MLaTAVbJFydp63o2f
	5LymaqLeFwQO4++Vw0DWYRF9ANRz7GXT8EzssfW9wWug25F663U3wVZ0xeB3hBPs10xWpKEGfq9cz
	WJQpWvwtD2Ty8ESG05m4cnAr7lE4JyZDWiLyel/ZMi5+K1+SUtsmqs0/YhigAxurD+17QR143fNM0
	eXO1atDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLeJ-00000000G7v-02zl;
	Mon, 09 Nov 2026 09:26:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLeG-00000000G6o-2aqs
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 09:26:45 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A96AAGk2540203
	for <linux-phy@lists.infradead.org>; Mon, 9 Nov 2026 09:26:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L+gz2J/ZGi177mXkyUJST89Pwyo852hzkeYwHBsRBvY=; b=pwdU+FhCCLc9mGTs
	zL5gW5iNmwWp31l7jET7VATfGm7Tkbd5RDGmczlA4JR/1qekae0jK649oCg9/WuJ
	dpW0pupK1or/1rHKlkLkkOeADJHUweRwZX3FF+QCCqcfFdU398NsqbvU2/fXq93T
	tTIJhMkyudAo6GDz+b2qfzwVJrWKgmQ3zFysp4KBAmm7AvWeuDwsisJslWdPCbjq
	YBICDJnADwKjmPoFlqQ3ubb/rEGacyPZ6Wm7Lw8ObDzGEpHDLZ6ThAVhT0CBaJEy
	JU5Pbsi5cTK45cV3H7dAKM3wFGF3kajnD6Lj/VD4XiUYlSCz8fz2tbdqCrR6lxqk
	McNxPg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hsvc6nkj3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 09:26:43 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93e629c7b16so17097085a.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 01:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794216403; x=1794821203; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L+gz2J/ZGi177mXkyUJST89Pwyo852hzkeYwHBsRBvY=;
        b=e+1eFvCr9NuOVTegqAL20+ainFDUMLIjT43PP0PT1mqlm8xEOys/bwUQ8q6MM9mtGF
         s/6p20/arxvxEMlKK88T5ZydhJqqVFnzeU/24IDYEVQqBXWiuELpctYWGYNQvvdDlXqA
         atMd/ZvO8a2yG5tn9dQWUPq0NP8RhOPFLbJIuYnpR2mH99Tojgmc1NhG0GnO7Ss+4rQf
         mbd0TRYY4EiY+fZgUSRl7OQ9NeNUUcWuJJJ8xvye0uiVLNiR0TB5zhIuTHBMHfWEEXKd
         TWwVSW7ru28NgwjrFJwpijFk4qP2r/sqXMkJgC5Q+LLL9RWk7vAgDLJ7Y5nFJadNKW2t
         J2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794216403; x=1794821203;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L+gz2J/ZGi177mXkyUJST89Pwyo852hzkeYwHBsRBvY=;
        b=vP5kIbNPo/M7/S1zvHfycf/C6AP8aCpLDn2pgrG+iPccFlurlDeOHA+vypRhsdI6r2
         37Efkio1/Z3xGs9iMjMsBw2ea5jnMF14YhBPEVl3OWMXm1TC8jrya9RYlYN1w7Xjt+jk
         FxHUcg+pHrvQ/kdFKA/47XWWJGLkGclk1T9u57gRs7HQ9VWAeFtYuyy43LJm7kH7P/4X
         bJuPe6qwTVmJfNLBb0r1t5jhc3/Jm7mcE8bJdRIeULZrVls3pzTZCvzkJ+gZeq1F0hWn
         /Y4w+DSmbER5vUcVD9Q62HGl0zF8gPludeOGN+jSs018xZWEyVMf2H1PLyHm7TxBNeij
         u3LQ==
X-Forwarded-Encrypted: i=1; AL+hErH5h6iqNK8sxmlYMR0A5DSYT8PVpTlMvDov1crexEkw4FCcDfJPYtw/tTQeJOSujsZaMpi7rw7L8Y8=@lists.infradead.org
X-Gm-Message-State: APuU4Z8RvnEmUanJ+3PYnyoDmszcmyLOBdYjZj5cpQafdzNyIJEbRTRo
	dGTYPGw/ycL5JjOTj0hSLga8iusNyiegd5VYa0hb+4diC/KnrELY1vOIKent7VsgH47EQeJGX3v
	taeyIUohmwB5dIRqQLqBChBw9ZBrmWbqoPuNGt3jP6Gxdai/OeO9g2U0lf4QCZiMxd3KM
X-Gm-Gg: AYBFou2TSb0IQWETmq0UPoLoUa/tsStBuSRUbFQFwBIjYanpMICtN+xjWP1mDS9WqMg
	4Zg4Y1Wf2SozdrD1N+gkjJ2VyiidAiOB/0wC8VgIjIx/GnCh2ZNQIPjklqRCPTRymDG/eM3W4h2
	ZGz3BzZ3liQATZDIetfZV+NqBdqaXMK7vRGs2SbgZndIiA1vWK8Ep8XWUrtESkcDVdOn8uT6OFD
	BxkLvP1X6AoEtZjhmA2t+KYD1B0ozQ3EZbHBPJVSJGkZY/lJU+xr3Tk1NnPkgGoCGaQ6wBZc/ch
	NAWtyNKNonQSpcHCVZEXGCU17iTfdhSxGMS2pMXmuwOMVDgSe7uJ+4E5HYTqmR5w5BpqFOCOLTs
	iyom90Y3/c6uwWGh8KNwKg7XX1D8BdbV81uprWQojwTYq5lzo++kC7vO/4hkA7KE/hoxWcg==
X-Received: by 2002:a05:620a:a41b:10b0:939:9ef4:79eb with SMTP id af79cd13be357-947842c05b3mr512746985a.6.1794216403155;
        Mon, 09 Nov 2026 01:26:43 -0800 (PST)
X-Received: by 2002:a05:620a:a41b:10b0:939:9ef4:79eb with SMTP id af79cd13be357-947842c05b3mr512744285a.6.1794216402619;
        Mon, 09 Nov 2026 01:26:42 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b721ea4134sm1200061a12.9.2026.11.09.01.26.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 01:26:41 -0800 (PST)
Message-ID: <46b043bf-19f0-4b7f-8c6b-b8835838338c@oss.qualcomm.com>
Date: Mon, 9 Nov 2026 10:26:39 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: qualcomm: qcom-m31: Do not request reset by
 index
To: Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
 <20261106-reset-deindex-phy-v1-4-6a9c9f428be8@pengutronix.de>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261106-reset-deindex-phy-v1-4-6a9c9f428be8@pengutronix.de>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA5MDAzNyBTYWx0ZWRfX1BQ2ZdMJLefS
 KM+KuJuoglgEwAvxq4uGZNOrcXGeS953cNVClJh8u1zCPdNX7+FGpTIUS7kMjTxfcX91aJ9fVX6
 3ZWTngufkc/NjzjR/7BtRyDXKAb7ksQCOTe5M82Q/kYgXNV4UCTaSnnMQKmDXe0KWCfR/homQMz
 VvVrz6iVk9oZvIyLJroj7lyzTpNaf4Dr5l7mXM6lYGMJnygPkqsIZ2dHl4OBD+mbCHO8Z3tAjLS
 z3uOFoKv5egDc2UbiFmz0Zbl1KAIrylpLHRo9NUwFHtByKukhk/VPwGhCXokJSwham9Y0+3rgyh
 SJspmCnSG22RbsB6wIhKBAnUxWjOSwWbXr9/VY3zoIIkEMMNuVohRk+xnhtE1IhFKsiVMHfH2Fx
 IV8uqybkCsuY93RG5dQgdbUaTiqjaetZp6+FS/SWAxj9QKa3nZgUgb2Vxrpy0iQVkXNPb1/LEQS
 dU0j+Quv8Fsw972Bvkw==
X-Authority-Analysis: v=2.4 cv=WOjqzXsR c=1 sm=1 tr=0 ts=6af191d3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=IWuRp9V-5v9cUcI_31kA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA5MDAzNyBTYWx0ZWRfXxJ0n88kvhZIy
 qq4q3gyXK6IEYxdsW3YOCPBXKfRHDFu7Y2nqJiNuxW9QzPCiZEWEJAIxa63FWQALqlRyDbfqLAJ
 qyo8FYGQN3GewcggnV79zC7yjrCYYJw=
X-Proofpoint-ORIG-GUID: jq3BBu0QlbxuOaxgJAE4AxX8nmgTtYKH
X-Proofpoint-GUID: jq3BBu0QlbxuOaxgJAE4AxX8nmgTtYKH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-09_03,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611090037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_012644_778433_AC280EEE 
X-CRM114-Status: UNSURE (   9.05  )
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

On 11/6/26 4:01 PM, Philipp Zabel wrote:
> There is no need to request a single reset by index.
> Use devm_reset_control_get_exclusive() to request the first and only
> reset.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
