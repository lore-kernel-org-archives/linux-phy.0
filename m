Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43069CA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 10:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gd39i6PaTwGp4wP1d8KMWf4T1aMH8xQvbfkihzcTW04=; b=CF7HFogECJhYw/
	Naara5OQJz0dOY1DdJxkw+XN3L2BSQKfHfGs1EdPnV3yt7no/xBmY0oKvXfc0wNbxcR4hWD4dsZGF
	+hm4EDdHE7mISiBEOpW4h6PADeKYpKTCjrit82/UPZr76CBo7eZTFO4D8fAvYEOoYDFUH686OujD4
	6RlNMhGlUso3iim76/KG2D+71ma4KqllYKW4PvmlsLg1WFpQEoTANXVXYRyWwUJFPc3fbIx+N6OJm
	E1R4A/7y9Qt6Sbn1We6wmFGhUvaDT5Vo1gFHAOGHjE6IBiAsdwMlYRPcx7BFtM89K21Awzuf5s5nL
	ynT1g+liG/rq1vYJ+lJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZkE-0000000CZMf-48WQ;
	Tue, 13 Oct 2026 10:28:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZkC-0000000CZJi-2AgM
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 10:28:29 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8HCi53908182
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:28:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bpe8qQ3M5h1iDZEhG5mujR04
	iapwZbDf0fYwJj5/lTY=; b=ch+CpLRf8vZUGgf56aNlWN/1uHUr4tjEFSawUP0G
	hvgrzNqir+yvF+vo8626EQ6D/RSR3XUhr7rAIuQCOJ1um8YKFTPhUhNNtHKI4jvJ
	wdMCptXNiaZqoApCOJOxNmJLnmECRM/b+Lq2W3sh2hOe7tQPW2ewzyswVPl65tKV
	JPeNqlcUO+DO0CI84F1s10yXiFA7HnT5tS00xjcBxYM0tF6W55W6KmH3PnZw9uXj
	HLEZqYLmYIA5ubqTQNoy+h2nhpBJZg4qMS8zAWNsLoluw5WaDfAZRiUbPEbbXY6/
	pEihglGTFqFeFpWudux8AF/AKJ6uq+++QS6JnbQbSoYeIA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h95xqu24b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:28:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93caf7856ffso564667585a.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 03:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791887307; x=1792492107; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bpe8qQ3M5h1iDZEhG5mujR04iapwZbDf0fYwJj5/lTY=;
        b=blOACpgCKasGvMh5TCxyu8UJK7nTytR6HH6YjA4ZCMx5Z8x+MkHUJyr4N9mql15LKJ
         zC2pi3f9TDa+fmr3sSrf5tZiOUDF3gKMeVBD1BlGOV6kexGXFlPrZQELUuQV2AwTggEO
         aIb3Ceqto4R5scfnTCcZE4No7T970zVaVxfGLtygf2tjN4kdcx+nt7mbF6e4rwDFKWuv
         cwQQ+r0ABbdxknKI+1XcGaCmjpkJgwEf/QUnYmqAvvutZz9elkbIQ4O25jayxoeNPZ/7
         CRSfKY4GVxWG2RBbF6cvsqvwOuPn2h/PQsOHPEUs/3T6FceG0+I0sE8C+ZprzTIzyLGq
         uskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791887307; x=1792492107;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bpe8qQ3M5h1iDZEhG5mujR04iapwZbDf0fYwJj5/lTY=;
        b=rzZ1vDkry3e2YlU/8B1CZHT5MH2CskDLwnS2Bg3VNwPbl0GwWrL8Xx3F0/7JVFiqBH
         YlSjRTwe51z/C94O3Ydmb+Rm/PTe/2hnXr8PIJACQhikinnHQzGH/UnGwosW2C+/k8bT
         EPbAmyEDQ33y/VbiB17KE4Lb2Arkw72hooubECxXJoKH/aYhdIOsbGo9TLvjf7ue4cd8
         KzcZ6FruF6Zl6FKI4LDK2mfrV4iqZSGwg2tt/Z23PRsLbnuoM+pT5t2r8udkuUHNUlqK
         U9CeHsnyqDs8qU7hpjbrHULdNh0Fgl5H3mutoxg+AdDluaNSUOqgl6uFMRvg5sIQY9DP
         zXvg==
X-Forwarded-Encrypted: i=1; AKwUvBzeiuLK7EFqvvlhNUDBRKXiHgohP1fG4c0F26YoVZ3D0P+957iWB0uq9WaDnk05UKxV45r6RRoeb6c=@lists.infradead.org
X-Gm-Message-State: AFq9FYJInLrQGcAUjwONoZRKAXeghDnhHrmvq2h0/KzjaTLXdU66h+es
	pXEGlpnES/i45Uu6inrIZVhqe7sYWhl04DK6kg8xdVzrVczUX4sXdFU91PSJGwQbX8v3024yvq+
	N9xT/Ngsst0uukl35V7W+p3ceARzmsc5I2M9XnhPjde8JYJUhAfH0u97QtJ1qH6bP8oaa
X-Gm-Gg: AYBFou0XAbYLTcMcIfHRju8sDrn5/X6WIpF8Bz4WSNF46oatRCM/FDGWA0hjWaN4EpS
	OuavkzJM+/dGQ6ncPo1eEEPjbGEkfOQZa/Vd6zetHzF5Q/SwcfkfCzKrMZH157YcPz6c7mtulOe
	/D52Z5GBixEdleRfF75jgxzURm0ykN0R7Jc12o7zijVNSXYXZ1LWuPx1943hmRUbeEwwr47qNXb
	AmtWOj4bBfh+IhHy0I6mu9vFi0ZLac9mdJaZI9grqSnCjIBDexvQ/pkuwqvbVkDus+UK+lvZI9x
	aEgbe0xVn3E3FBot4UYatVmoH6x+kM+/85s69KCzcN3zkxk5lzfZfKgoZ9f7rnXleghFHi7AWCw
	6Bldfhbe3GSffL8Kmra7rSlK3L6IGoSzgX2gHc33OFkLqpWJQec0hjDhAe+7uwv7c23fg5z/GT+
	pnDvp93fCY24wR
X-Received: by 2002:a05:620a:4693:b0:93c:771e:b672 with SMTP id af79cd13be357-93ebd2955d7mr2099039285a.54.1791887306578;
        Tue, 13 Oct 2026 03:28:26 -0700 (PDT)
X-Received: by 2002:a05:620a:4693:b0:93c:771e:b672 with SMTP id af79cd13be357-93ebd2955d7mr2099035785a.54.1791887305992;
        Tue, 13 Oct 2026 03:28:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a9c3cc730esm34197011fa.26.2026.10.13.03.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 03:28:24 -0700 (PDT)
Date: Tue, 13 Oct 2026 13:28:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 10/13] phy: qcom: edp: Add Nord spread-spectrum
 clocking configuration callback
Message-ID: <ix2c336s65dqq3trynfpugujuadqcrpojef7vov2g4h4sek7eu@icwb6gfeewax>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-10-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-10-a2ab9af954d2@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MSBTYWx0ZWRfX3tojDWkd34si
 fso+DRun7tWv3zY6nKBj0vh5JXVlG1+arjU6dJ5XjX/UNswJ+aQraATOmczFgJ+v6cJjjMyS2Vq
 V4YzlSpIxRY3fI3UP73/T3oTl3PrXLdMZfvfKhWviRgO8wjauJvakgqXcyQgbsk/NVGz7+JA8Ar
 z7cCZjH81hKjnIVZdwnISPFAF9K0qXU2RDt8kyM5JeltoPTqL7ebK0TQ3wQq7J1hYDonO8Jbftt
 a0XHc6fOYQcwsQnjThmOIAab0mQ4jw8eysDNvZ/vXJmmzG8zZKKT4077mozPtokNLzl+C7+6vHs
 UM6SNq8SUWi8SEgQQc/pvCk0M2ql/2GSqh/n29pDNF/IhIGzvs3t67mBd2pdoym3vJ5BnEeR88N
 9MneqN4TB6noNtyO1WxZ14C8GgPSIUAzkqXuLVGehaZLjmtW378ZRd8qzYAF7P1iDbwE1JN5RVK
 t9LVGeqyiUbIrJXE2Jw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MSBTYWx0ZWRfX/0YgbWI+sQQF
 mViL2bi4DAJaB1euceNBK2LHGXGDm9kbIUDr7CgEovGsJZVF7NF2ADJdt8f3QLXTST0OpYl8Sww
 MTbr6zVTL3o3i+1eS9Ts1XkAeOJV9iI=
X-Proofpoint-ORIG-GUID: VKiscEY6lQaJ9gIqo2pVUoq6HfptAGDZ
X-Authority-Analysis: v=2.4 cv=EP+TQFZC c=1 sm=1 tr=0 ts=6ace07cb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=kwn4x9jUkZ_pmG-z6m8A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: VKiscEY6lQaJ9gIqo2pVUoq6HfptAGDZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 spamscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_032828_690867_8D4F98A2 
X-CRM114-Status: GOOD (  13.13  )
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

On Mon, Oct 12, 2026 at 07:02:20PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord requires different SSC register values compared to existing SoCs.
> Add qcom_edp_com_configure_ssc_nord() which programs SSC_PER1/2 with
> fixed values and link-rate-dependent SSC_STEP_SIZE1/2 for RBR, HBR,
> HBR2 and HBR3, per HPG Table 2-9.
> 
> Assisted-by: LLM
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 

Squash into the previous patch.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
