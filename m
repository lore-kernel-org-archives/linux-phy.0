Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30BC4C982D6
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgErk2EjCDpb7AQUl1E5+OG+geuErMAWLEXopDrgGu8=; b=R3fnLPK7bUHK/P
	FpTEXy1ItyZhZwBuHbjWCtCFLXOsRsE6WYBr5WA2ZUM1+TwOkkvAK71u/Vz8R2ZeRKp6OfqzqtG6V
	M1J1Ss/8Zswhn52cke/ApL2P9fPvoxTt/zPUBVqOUm5/a5sESC/1nJUWBhXUvxUGfEyAeoPlwLfNt
	QIDpaMVBw0ZBPTKTjvp3h6ZIcgWlnXAbDLkiAG2K2KVFtjUiMBsYV/miWRb/EXFFUuXG8WkKz6zPU
	0cdPZ1Rcie71TvA3ZEE/iVD+ofKEwPQvs8qbxSbwZIwMqXYZYkqNxmVy5R3vr1tv3f2LmyyO5q6QF
	XTztEUCsgPsdqteppGRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EDK-0000000BijX-3f4O;
	Thu, 17 Sep 2026 15:39:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EDG-0000000Bihv-37VZ
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:39:53 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68HDiPBU2086466
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:39:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+VM4DE4C72pbzaP9G45mgFYM
	QivvqHf7bmdDimV4fuw=; b=KF1YJoNlSqs6+b171E4rtkq3IQDMjSKvd8JXOO0A
	moQIU0hjbwBAcLfsBRMDP5bjN3WvcmliaoUE4Vt/4WCi9O7q8HPoP6yNdSCDtgVX
	5KOPP2cRZEE08pCzv6Qgj/OOPBKmTgctcKzpvXtVX4xkh8FiK8PnGpFK17Y0QV9J
	sgEyZ0PZUOcbKSLSURYmK8lDrJ5UVptKEARcBDgh+AVO0YpArXf+t9ZPOhdsXPmb
	YozoPS2vBxxYtSQijKwLsVpBy6VO6Q5oJGu9ECw9jm+qRFw+bzko8vDThVwcwnnb
	WhN+LR+F470P2QV/YsxYFcu41jtMpuWDi4A2pJ9USjyLmQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grfu412rx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 15:39:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93a05d645acso222433985a.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 08:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789659589; x=1790264389; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+VM4DE4C72pbzaP9G45mgFYMQivvqHf7bmdDimV4fuw=;
        b=M5KUp2Im/DD3BQD0B56oqG7h+gu85ujYb3w6511ve17wpHrr5XVWVYFH4SZbATydN0
         CUCuO3QZAE2+KRlxSEm1fFv5k/qa1iTKr3EC61IAWZw33EVdc71Sn3j7+6Sm1mdcgfd8
         wmgbEtDxEsU6dCbT1ocQXLaTtjTVDgCO1WGlOAS+v40fTvJsimGrJrFmhIDwa27TE/2B
         3JWvzSul6nkYSyfs5Nrk1kzHkKAt3wdANvfk2Kq42gBLscZX/6nZ0AksiQ1y102+X4m6
         MpCcxfaVSwzlIQ8viSXVZFH8A/IWDSAwKW5ARKjh/hNZpVHsXy7tnr/2aZJOu/wMnpyw
         Rvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789659589; x=1790264389;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+VM4DE4C72pbzaP9G45mgFYMQivvqHf7bmdDimV4fuw=;
        b=WtlX6JP/1TJT3Q+1BOPAFx3B0Yt3hTHmJBATyGJ/pQQt/itpPGiZA3hZhiHSQ65omR
         3AbhLEukqQPEYxfglanqflB9ZzalzOyVd3v803iCHWgOG1zlt1PGQst4SYt74uxViXj1
         cICHEjjy7TBgIHkrTis9JcTX+x6p1vnM7paVzRydHN3i7Wf0Azhun6k8Hox8zoRfuvDj
         zKlEG8uqXc/Q1UeFTSxWg3r7YWCWImJzZAOwkJtAEg5x5evBipbdNSL4H5QSbRNYdBAL
         Na9b2bt4jZz9WZnXuL9k00d62YIb2SPkaoEzJcIqpXB2KPlMecsmmeki1aV18oMk/Q5h
         NvDw==
X-Forwarded-Encrypted: i=1; AKwUvBwYUujH0hBIhzSsaziPvrFHg+NiwTXwvKFSVS7Au6NXti4hRQH/bX8Qkjo4WIuDr9+ZDeCodir2fZY=@lists.infradead.org
X-Gm-Message-State: AFuF++kQn9ADQEdtuU54IjuoXQlAVII5frGUmJtczBhOGexv+ZHCbF9t
	l9RrblVae/AWg+ZgkyybFd2dW+Mx3CIe5DKAJr+lrBftrAS/JPZ6pFPyvCz44LjPw1pHC7J3Lxp
	pFZRc/CmZfD579LqeyIdOIS8ZUUmJIszF6VoQ6qmJzag8WXqPtEgWi13oHMLY+RbP5lQV
X-Gm-Gg: AYBFou3yHaBa8uOsEtusCDAqZnAc2PVcaqR1ff3iThBK86BMUUndRM49ed23V30ccnb
	svOZVEHBZepvX2dRqY8cKbm3FlrExs36gdgs1HQhJfrNUn6w2o7R0ih4ZLMjp4K+aa6ciWanqiq
	5EEcH3JZiJIy0LAhmWiG4Y0oUziOSNkxIERo2O7uDOtyz8i3GweQyvROzfVo1nzfdoLxOw/MGdL
	Qg7KYV5ajVImq3YUrU7kePWQWi/qCsoVmzLAJuztFiZrEQxYqXC/8eB+XdFsfESlcu2DY7rQEEd
	9TfjDODi+6e9GNChATiU3auKmBmD5s1q+qjVmaFQhPHtvBTAwDjI9Bv9frtBY3ciP/s5CKetQEm
	NyZ1wCBmi2kHcXw==
X-Received: by 2002:a05:620a:4049:b0:93b:d79b:9a59 with SMTP id af79cd13be357-93bd79b9ff0mr126533085a.58.1789659589100;
        Thu, 17 Sep 2026 08:39:49 -0700 (PDT)
X-Received: by 2002:a05:620a:4049:b0:93b:d79b:9a59 with SMTP id af79cd13be357-93bd79b9ff0mr126527985a.58.1789659588511;
        Thu, 17 Sep 2026 08:39:48 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fbd204d89sm98570575e9.3.2026.09.17.08.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 08:39:47 -0700 (PDT)
Date: Thu, 17 Sep 2026 18:39:44 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, sboyd@kernel.org, dlechner@baylibre.com,
        nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
        gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
        neil.armstrong@linaro.org, sre@kernel.org, krzk@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
        melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
        ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
        luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
        mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pm@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org,
        Sashiko Bot <sashiko-bot@kernel.org>
Subject: Re: [PATCH v13 01/12] spmi: Fix potential use-after-free by grabbing
 of_node reference
Message-ID: <le6lnvwdpwdvfcnjupxalgpehqbuwerhvg35inzr43hie5mfvg@743uv5ppkpg4>
References: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com>
 <20260721093626.96264-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721093626.96264-2-angelogioacchino.delregno@collabora.com>
X-Proofpoint-GUID: ypEk8prXAxU_8NEJxZooD9gOcEdzsjEL
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDIyMiBTYWx0ZWRfX49g/c01R+agW
 c0anVQZ3twQrGOGWTljCEsdR+qRLsMmJX47kVanj6dXqdeo+hl7EOlX3YpmG1seoIbyEpjEaQnE
 TSHOXq94jBMEKutycOuilZdan0AqWeM=
X-Proofpoint-ORIG-GUID: ypEk8prXAxU_8NEJxZooD9gOcEdzsjEL
X-Authority-Analysis: v=2.4 cv=LbipeTfi c=1 sm=1 tr=0 ts=6aac09c5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=c92rfblmAAAA:8 a=QX4gbG5DAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=lMp64ggZct2OJqWbRbcA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=GvGzcOZaWPEFPQC_NcjD:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDIyMiBTYWx0ZWRfX7w/UdtRGLADw
 lP7gkJ+eWaS7vZrAQsUkyYbt/5enPXDXBMHYUq9Rwb2cm4lWZj8/hLfwTayjlpcRPUkQh0CYiyY
 xvGWjPBJmB57bsuZgDV+14Qk5n5ZUqsMZgy6l6Yak8go3gNkj1WPmDdjTSwwvXHXdfLgNHa3ShE
 lj2XibkZV3dU6OBTwQ7TOJ614peHaVAZj/nhvLIEYKVKleJda6ZpYlJ6o/hJI2YwvXgFAqeb777
 0URUtb8FBl6/MN3tp4S2rMFcOVe25ORE4WPJ216E0cfTInVJVMHyGtFrqWvYo6Pg82F1busMEx2
 8M1dbD2ULyLPBZXZ/96TTurqE8pDA55t5Eaj60LyqwUuotPx4fzP7F8PQQtnW5mKAKEpSyvJNJV
 qqGKXkgxL6gvZ+fmeTvDQ8a0w/00W4LNchrYsN6VXZuv7TbU1OzBioEcGFkq2DQlWz7RCJhtjYK
 7cgCkAxv7vfxGOSf0nQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_083950_894969_665DC182 
X-CRM114-Status: GOOD (  12.99  )
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

On 26-07-21 11:36:15, AngeloGioacchino Del Regno wrote:
> As noticed by Sashiko during a review run of an unrelated patch,
> in of_spmi_register_devices(), for_each_available_child_of_node()
> is used to loop through children, and to also assign a node to a
> newly created SPMI child device.
> 
> Problem is that the refcount is dropped at every iteration so, in
> the specific case of DT overlays, a use-after-free may occur when
> an overlay is dynamically unloaded!
> 
> To resolve this, increase the of_node refcount when assigning (in
> function of_spmi_register_devices) and release the reference in
> spmi_device_remove().
> 
> Fixes: bc32bbd04011 ("spmi: Set fwnode for spmi devices")
> Cc: stable@vger.kernel.org
> Reported-by: Sashiko Bot <sashiko-bot@kernel.org>
> Closes: https://sashiko.dev/#/patchset/20260608100949.36309-1-angelogioacchino.delregno@collabora.com?part=2
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
