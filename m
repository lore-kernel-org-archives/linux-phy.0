Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4A90CCD184
	for <linux-phy@archiver.kernel.org>; Sat, 11 Oct 2025 17:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFHg5U+lfy6pJInmbyw36U7jphPAEEWaeRWUo8fAT1s=; b=EeQe3p/aJXtHAu
	+oMlJ0jaPDsRg9RfneOyw4F3PgAglUVB222v6ORtIcPZ1l1yapylGcgy+G1XlHD4iYBb6uUzHcz14
	Y00sBzv8HBO+g98jKZqDHBHgVRmkKsWn6sRz4Sq4j8ioSwdJbkIwRgnPDDHw0lPaGYXEVVNdk5k73
	7c0SUEbJ7GCVRlpM1H/1hAa3CYXYH2dsuC8cbnhFep3ld91eBXQzkfh76s3jwTVwQY+nPlS2HVtfe
	rlpA0l5MxZ4UodUz6dDAkaKLCrZGdvZBBsASQyEDFa81hhYE6L/xINFOHOyrNX7eN/t5Z+dydNTIH
	gajOFxB6etP7nO4b2QNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7d3o-0000000APla-1qMu;
	Sat, 11 Oct 2025 17:07:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7d3l-0000000APkF-1Wet
	for linux-phy@lists.infradead.org;
	Sat, 11 Oct 2025 17:07:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59BCds8o014641
	for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 17:07:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mFycPb6v8NKaDe6FYB2/8x+o
	vkGxvomJsSjcJN9pEKw=; b=pn0h0OcIRdlCvpvf8AjJVH6nVCXg8NEJeCQW75q2
	dsToMtpqSi+FaPkkcRIipiaBow3F8Mt0xdph6Ty33wqPLR2jpF+MAGyHWJFRDBVc
	2g6SrzzItdXMZJs4RIo5yF3mVzUscJ5f/jt/1v16S4qXdikK6xk/2yBSH6l5Grxa
	AQvyG2gx0K+oz9bWCm3Wd2g2wskZ6FpJ08hr+IkKiXAJKtNQQ2ZENVco/RnbZkqP
	0ycpTVwbCwXLwDB2OXc/DxiGSnhT3vqtijHOw7tdwBYTXNeYQdUS2/J9Fih49Fi9
	a/UE+LUVGdC+a4YIb1jekPmVYnHt4wT42DujL4yWW+rGPA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfrujk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 17:07:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8589058c59bso2541316685a.2
        for <linux-phy@lists.infradead.org>; Sat, 11 Oct 2025 10:07:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760202427; x=1760807227;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFycPb6v8NKaDe6FYB2/8x+ovkGxvomJsSjcJN9pEKw=;
        b=DuqXFhvOUk41KMzgKNN4dqKi+0tUclMlyp7lMnlvknruIN3JCC7RVt38cwpVgW+kF3
         3sstv3fN9r+Z1+I5UGYKXv8ZY2t0r10ZYziJq5j7phxjMjrbyyd1neEmZmaciHlrAXmo
         Z09Ro4AUUnO9yi8YFucwjgxd2tlgKOzD1CJ5Jm080qquQmCveFd4NYvBufMh0i7upyYM
         NEKsVl4ezP/gxY4S5KCBnyO+Esw14Q+xXpuXWrfvczwAPS7IlnPhLLSzEjD1rv4GkynS
         WV8Shk2M/Xudu6FGKqe+XOBXCUZAX6U2v0HzI+jdy2BlHbBfkjZW5tLjNDiycsVMBc5m
         2D/Q==
X-Forwarded-Encrypted: i=1; AJvYcCW1axRUREz2MNhcAFp7UDczYE0v1/4NggKmbRdbXx+m4OYPf1pLuwqKwxcZGtmAgek6PyH7hPP2rSg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yye3+K9Ih/1kKp9tmvNlxk+BEZbUNbIsN0yhEUAY5p+neB7hTpK
	3Ss+eJrV+yFTLD04LSz9yXlhXgcGSTrHv+UOP8ppE+iAjykcnb87GFcpeeSGgKOemk5B/wFsMoX
	/JEhB2AUbdgKLcdqSpBpMvnVRiyz5U9uzU0bBhcy/2VS+mzvhPYD33IkLyf0ozkIxSrwN
X-Gm-Gg: ASbGnctVSBLD7uH1z0GS0IUFjutw9aZtuNUSGMm1wyy7ErMXf+RkAORvPl8KVHBw0bV
	Vgq0h7jPQa94SLQ9P3o9Ii6MCHnujK+U8tGJ8M1OktyvR/oUmJMMTBUyrAcHuAGi/Zut3RZRDNp
	zBE4IQxHmwo7izJe06IV1lmaLCp4LoCObt6IQ41LseengtjXXyozm8Ucb9UAmgOSz9DQqKM5Zte
	2oFyOfm0UtYVNM06FFvkrD4J50EpwuDUB/QtbTRaFA/Ve0GxAPqHd2UtZIB8d6TfIbbnUw6QPVo
	dj0HFkY903QTT8L2FJdk89WWp8Ib2EdJcvId4cV12LapiCa5xKncTi7U1xXQgGhUcW1yFuBNMeD
	LcFhpjR8ahgx5DQEJF/HVdgZZz/HUviPMwO7whkYqUMZxqksggIA2
X-Received: by 2002:a05:622a:4a8a:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4e6eabf437fmr231238421cf.0.1760202427567;
        Sat, 11 Oct 2025 10:07:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGnG/nUOQfuTmf4P38ClaQ0pqxIsVT4KwQ6QvBre1kD+zoeTzKlRbXjaxIWC6ayUXFmCULHg==
X-Received: by 2002:a05:622a:4a8a:b0:4cb:102c:56b2 with SMTP id d75a77b69052e-4e6eabf437fmr231238041cf.0.1760202427149;
        Sat, 11 Oct 2025 10:07:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59092ed98d9sm1244485e87.24.2025.10.11.10.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 10:07:06 -0700 (PDT)
Date: Sat, 11 Oct 2025 20:07:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v5 4/8] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
Message-ID: <jcmn6n4nbyjsmpvg4q47wxulgddizhiwax4dcb4dokrvj23eur@g3nvwkssg2li>
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-5-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251011033233.97-5-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX9dfd78GLgGfV
 wSzyZgJ6kqUHIKHSrWn3P6WIRtQP0URLO4UADd2xYlUqBj0JuAcz8JZPj33muSjkUc1sSBquG9r
 SAsGL3DfM7Q7+Xl33T3TfBFqqAFBxW4biS8rzDne1Rk0UN1qCjFqE89UDJi0Tw7MIWZfh/ImGwe
 9yCJvMJOGsNhw8O2rNjyrbLoCeYskgxGrE+JJTNDdUf5XZ3xtlkffS08zI3Omp07h6oBJwNw4ot
 jO/2c3pHAD8wkQDIHtocVrzYqMpNuxQJAw7zmDJNm7k3WaQYS02QpF6s+wm3hiv5DvTcdG9XxoD
 wQZWGIwptpDGEZMQlh1jjlqBUYW7nmAI17sRXZYQdHeXnFcCtyq/XClBMMEpcAJPu905sCRZJp0
 /lvl02HCo6ATpo2eg82P0gvizaXu2A==
X-Proofpoint-GUID: LjTK0bHks7XytFTDXcwBNEM1e2DIRndl
X-Proofpoint-ORIG-GUID: LjTK0bHks7XytFTDXcwBNEM1e2DIRndl
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ea8ebc cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s8YR1HE3AAAA:8 a=-wB9imSA1xWJEod_rSAA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-11_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251011_100709_437761_1CDC0167 
X-CRM114-Status: GOOD (  12.82  )
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

On Sat, Oct 11, 2025 at 11:32:29AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
> device.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-typec.c | 52 +++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 

        depends on DRM || DRM=n
        select DRM_AUX_BRIDGE if DRM_BRIDGE


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
