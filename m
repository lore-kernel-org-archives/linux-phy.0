Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02A64D3749B
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 20:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmOK4+8gTJG5yAdHVnwb22KueuKHROij6NVUME/y8N4=; b=k+l+Ki2B0qwB/u
	k663eyb7XJC99j46tDoeBgxX/gTgkMmVRwyIeIJnZGWPgPNtbiPzzERp0e0WAFJPBctysx7XfA5Gt
	IUOrbVFgYCoxZsr8z3Ws6j0G/lwZYS7Zo18Yhu5gUGEPE5GwK9RRb3txxdKC2C3aSSRqyVWAsxUsW
	f2awYZLd7hltrdOwYlBSNZKywoySPcb76mdkkNk6RmWmEjDed97MZeaZ2qas9+z/zoImttCY2IKTT
	hUMrKU0Ich0N1ApBl7cbcgzE1Jq59fob5NciJ4qmVGN3ZSKPu8QLC6KhgiG5p/Ti8pXTEiQybNd+t
	fwOSj1crDADiCSyJCuZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcAk-0000000A0KD-1qTi;
	Fri, 05 Dec 2025 20:12:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcAh-0000000A0Jl-4Bbi
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 20:12:57 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBSwG1256004
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 20:12:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=17Up5+gBu+ip9HZgRMjr/+hJ
	pm6AotMUUkY5/MMs2v4=; b=Lc7ZDwTABPb66mll172FgEqwHBfsc15B9UyR/Zs+
	byPjez7k+a8coEamMvjbqMHekbtdCfYazvQoVp3INnllNd0CVqtswHZkOva3HKXj
	3nmuC1fZrxoaVVXc1JrJsS5jvX1qb70v1zR9HfuxpC+FaZvpwl3bvpjKhQasmvtA
	CNN9jnjm0fsQnjKY2SDUFw8PO+9GyDyalhNYZ6JANBLxQWt90fOG2x0pFt25Wexb
	wV/e8c7oBMBGqHbLkPR4I2QEZoWojv5V1lK6czvst/KuYSJwX5Gq8WheoRd6GEp/
	B3TvyufQNHV3EY/4R+4FAuSTDHd59UH4hbvMYRt/L38q7g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj38wh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 20:12:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b52a20367fso664303785a.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 12:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764965574; x=1765570374; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=17Up5+gBu+ip9HZgRMjr/+hJpm6AotMUUkY5/MMs2v4=;
        b=jH9gSlm3WZ7rYoDFY8bVHhab9YkzB6th3Vc+75D877owL6Z89xb0x/HMGulRzuMC/s
         rUO9O9awityOQBuiHbzYI+Y1SzzLvtNb9ecWr7on0H527oHKeqO+ASsKg2SXc4pzqK3b
         VDxZKR552DAizzbAbIkEopGpxTnBmIFqXm3v0kRbHGa884qHMp99/9XpIVQFw4yNXL5Y
         /ILNjbKivhOP/qmyKv9956lcDpK8ZNHpE3yxy2AHPrwjzJosmAFuwJf+4NS822tvLNqK
         Be5a6evHLWMrlwwfDtJp7CH2oQ5rPdkJUNb2RIAMAfLEr2p+o/+8f2frT641K6jz+nsF
         7C+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764965574; x=1765570374;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=17Up5+gBu+ip9HZgRMjr/+hJpm6AotMUUkY5/MMs2v4=;
        b=D7FiJstw3ORt1EPbqp/ZC8poe8Z5sszx2G6sO9Y6rqUmjpCDfW+W5nugp+2hPxqCk8
         qZkQUToeXOAMy0n2ANq5hCgHYVy3WXyka+jd4pxbobYkazGegkuP98JNFFXjVLnY/afH
         lBAZwdeTkSUTSPfPWeZBAPU4Q/B7YxETkJHa/ouBE7IfLOX8WEPZAOsUobLoda8pxUHU
         lpYZkz4WJ6XTPlgZCoSLGKbcMMJLYhCS0ytPwCa6PR2Le5oQM/f0BVFwedmIk/ekiP1i
         2heTQ3gcs+9NDC0kLzKlyhlA6S0K1/JLNiV/wmIVRYdMUDIWXA3dN4I554QW43UXaWvh
         AVaw==
X-Forwarded-Encrypted: i=1; AJvYcCV9jRV+1X5Mmf4QxhZH3FtJzhYxO+t6yV93Kgh6Q9jyOrJex+BLZEfgcATD81wqAg0bg/QuARs0RD8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3pe/xymDIhzStFliinXU35MNGyapau4qo3Qzg2CdvASyi4Qg7
	ctva3VtP0SmtfkQRKsBWuLd+s9WKjXd44HPAu6SmX8l6i9CqhcWXDH2jT1aT17JdFCErLuCeGna
	zIlEkOXmP6Ye5kmJVx1A9yzNHuEhAFpd85KbMgHmWQAzsNoUsRG9qI1k9mEZqeW5FfNDy
X-Gm-Gg: ASbGnctDY8z3K4gT/YnXhjaituYtnQN4VULXYRDbaZWj61kNmHMuVhQd4iL3eQeXLN3
	ILMSKmxaweJZ9zV6UwX/CB2V0UzBZweVfurkKhofQbxPaDGirWSpK5mVKQDS0vsrUKsZZeA5k0L
	VbuoiFhaEX/tqCGY6dpkeQpqLlxvO+56J8WLfh7Rx9RNHEgwNpZfRv/wXpIzkseOtedpHOntEH+
	KT1lTssv53jlp45s54IoKinI17Y67e5Yz9uMP2p/Y2eemztEYQ7qh1JoBuJIvXMGayE6kGL1eH7
	0hZpI4lalqtNIfoQTKERGjHQkPrlt3kDlM4ED0cB4oHLjNQdMKi1L4hxN9ZuMoa7929uuIYZsWK
	ZMuj3k2sMumBr+jUa0G/IM/bD94Dp2lMmTFny7dfPkpAlE9OInzbrpzSpup/tW7Dp1pOm5vc06t
	NN86G8oF/VPhIugjxSF2bbRtM=
X-Received: by 2002:a05:620a:2886:b0:8b2:e669:9888 with SMTP id af79cd13be357-8b6136ee6bamr1280803285a.3.1764965574163;
        Fri, 05 Dec 2025 12:12:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH0nyTLqLB2IE3HGJP8umJGrmHXxIDwSj7rjtYEq0kRKK4R6fl+l0h3DgMUGz5HpK964IXw6g==
X-Received: by 2002:a05:620a:2886:b0:8b2:e669:9888 with SMTP id af79cd13be357-8b6136ee6bamr1280798185a.3.1764965573673;
        Fri, 05 Dec 2025 12:12:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e706064a7sm17570821fa.39.2025.12.05.12.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:12:52 -0800 (PST)
Date: Fri, 5 Dec 2025 22:12:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qcom-qusb2: Fix NULL pointer dereference on early
 suspend
Message-ID: <iua4oe52yb7xw4jtdg2n6bsi7m2aqdjcb2qsk6lrxrf57yeuxd@mseysn3kwuck>
References: <20251205160437.259125-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251205160437.259125-1-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=69333cc6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=hUq6kyv-PA6msqUrbqQA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: sNDV8HDYP8VPM_RrhFq6ihCFFYsh2jQl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1MCBTYWx0ZWRfXww+2ZfCcQdzR
 DE7c7OuDyGPgjrRH0Fr7dsh6HOUjR7kXOTwZ8KdB0DfjVYwZD6wMUPwWhnpyxuaXIMSnDIv0z+t
 ZIEQvdRfF/KEFboHLQd5GBzMS+lTCddXKSYme0KYNjs4t0B2FM0PgvpzqwxklJ1uxcIAqpyhUNl
 opw1VK/2+ZcNlrdm747SzGCeFG6OMrJzCRjwy/AsgQ/hi3pSBRmUA2tEsQ0w1pXmksS8PhHZEd8
 6Mc4Jllav09Anc2X160v4T6KryflxRESaWAXbOoFpNU5WihfzS1YiCsnbS4xrMgZsBxlP4qhS5v
 Hb0vU8kgE+j/vmppFuqCoDuDla2g7jo2mTHLNRD6TrHrR/jaskr1Dwb82wdaXDKs5K4Oo5LBoYT
 cwslDabke9uMVkpAou/8fuu6OJOt9Q==
X-Proofpoint-GUID: sNDV8HDYP8VPM_RrhFq6ihCFFYsh2jQl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_121256_180143_ED97A46F 
X-CRM114-Status: GOOD (  24.52  )
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

On Fri, Dec 05, 2025 at 05:04:37PM +0100, Loic Poulain wrote:
> Reorder runtime PM setup to ensure pm_runtime_forbid() is applied before
> enabling runtime PM. This avoids possible early autosuspend and prevents
> qusb2_phy_runtime_suspend() from being called before driver data is
> initialized, which could otherwise lead to a NULL pointer dereference:
> 
> ```
> Unable to handle kernel NULL pointer dereference at virtual address 00000000000000a1
> [...]
> CPU: 0 UID: 0 PID: 11 Comm: kworker/0:1 Not tainted 6.16.7+ #116 PREEMPT
> Workqueue: pm pm_runtime_work
> pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : qusb2_phy_runtime_suspend+0x14/0x1e0 [phy_qcom_qusb2]
> lr : pm_generic_runtime_suspend+0x2c/0x44
> [...]
> ```
> 
> Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qusb2.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index b5514a32ff8f..97bc3755a390 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -1093,13 +1093,14 @@ static int qusb2_phy_probe(struct platform_device *pdev)
>  		or->hsdisc_trim.override = true;
>  	}
>  
> -	pm_runtime_set_active(dev);
> -	pm_runtime_enable(dev);
> +
>  	/*
> -	 * Prevent runtime pm from being ON by default. Users can enable
> -	 * it using power/control in sysfs.
> +	 * Enable runtime PM support, but forbid it by default.
> +	 * Users can allow it again via the power/control attribute in sysfs.
>  	 */
> +	pm_runtime_set_active(dev);
>  	pm_runtime_forbid(dev);
> +	pm_runtime_enable(dev);

I'd like to point out that the pm_runtime_enable() here isn't followed
up by the pm_runtime_disable() in the remove path (there is none). Would
you mind sending a followup, changing it to use
devm_pm_runtime_enable()?


For the patch:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



>  
>  	generic_phy = devm_phy_create(dev, NULL, &qusb2_phy_gen_ops);
>  	if (IS_ERR(generic_phy)) {
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
