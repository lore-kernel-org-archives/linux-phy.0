Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C75C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7TqYxOWZSS0VHbTKY9wTAhHgJMVxTXx+9tPNskXASk=; b=w/kcyALRnKann1
	DvpZBdGJIcZYSZkOTjH5CGUkF5FjGIHrCLzpMjimEoIop7/aFZVYacNmWaIY8OlcLayGkIlxHAOsd
	R5/VNRGLucagNnooXp/Se+8NqN+9crS9oh4CwQrX3gT2TuMDArZVGwYUyQKlnZpNMIcTzt0g89OsW
	eHXF2hC1HkGaYbDNgefIketfqnGK3m3JFwimrDsXH1iTMgOpV9SPV91+CjGSxMLGcWXx4v8+qkZD8
	oGXDviKNn050io1mgtS0fboqnblXZb9PXg9Hrvh+57VQljADBuxoIAyut9Qwgg6dJny5yXlYRsjAa
	06vhvh3VfIZCn6h0bpVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NVp-0000000C6Iv-3KB6;
	Tue, 01 Sep 2026 12:22:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NVn-0000000C6IL-2F9Z
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:22:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJdou1713065
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 12:22:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=u9bhKclenKPG4bSJi3Dfg5sn
	oNshWyvaPdPox2LBfdw=; b=lQ4lw1Mr/YKKYY6luXGya7LGeGohXeQigDhqPSEC
	WPAhwC/RwlAzZMVA1usY9JOWSS2fZu7yHHuYd91PX55nGj3eT3SuiLJ+pBP4WJIp
	LusrB/KHNaVMYsBVT9XMwEHLFNmZ7w06js9O0vDHcI3Lgh3GolkcS8m9pIJPvDsJ
	lIn29eInHjH2fjgEuULX64946KdhQJ6gSKxpfJZWaW8oGBcItyjh+l06l+TH8Xk9
	FkrQbm1S8KVld4VwjiGLnt6R0p7ZLSvngsiLYFOvVYtT/lUmfGYDp7QNF82O5VtF
	Rv+spqI6DfMyKP50CgNrXCWEE0iED9aN/EmU62OpCfXswA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdndxafke-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 12:22:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92e5e38fbc5so728180485a.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 05:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788265366; x=1788870166; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=u9bhKclenKPG4bSJi3Dfg5snoNshWyvaPdPox2LBfdw=;
        b=Tv57yVwOBXxV3oLelaP2PDWuHOYWLtgPAcjsznsaTqwejvUhR9AixoJQvos5IpSQEh
         DbAc0g50szHczikk0LaimUqGXAZEjWcA5IiShyQfSPm1TZ9FjKzSfZGCY1TJUZ8zeJ04
         qYaf9u81S6f5Nk0TaNwiokxIOo61BEBdQboC4BT4H28oZJS+Ph62nNBe6/v+UXysL6zY
         1XvGxEsEozg7sN/uSxqTHAysVtZnkntPWYPwf0tq4TFpCyNcBX3H/HCb8z8qI1Hj3ovm
         okkTm80Zp9HP9wQQSHoaMED+KoRNNHW9dOjmeAoXWqfgHGxnd5nyeLyMO+3a3529lsL8
         lukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788265366; x=1788870166;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u9bhKclenKPG4bSJi3Dfg5snoNshWyvaPdPox2LBfdw=;
        b=npHD92RtJ0ufDrWPh7nvFu8sGBG+wgHZE2bw9TXvca22eTJp16GPKLXzsMSvlucnjT
         7lxxYIRxzibMD4FoyAR5RTTN+3ZTqMfDpkeTvzcUNkG1cHnDV8G2y0NAwk5DdgfJwcbQ
         jZRYr+AZ5ZmdrZELX8hYNWHzlwnZ/eQUT9mBfI/xcA0hx9RSxP8ZrAKwaiuo1Zw3bFGC
         tH8kop5JgAG6y35oO3ACBVUU6aFbDG7UswLrGTEaAHnL0nD8Szify5ggZrgp33/c5iWE
         L/p+b/o8irKQsjR8PMw43T09DDffcmE3EuPXuSH1xhTvPY0k9KhdvcZGQOGDRoooPReb
         Z7Qg==
X-Forwarded-Encrypted: i=1; AHgh+Rr9sa7bv3qe+9cSWORstD38ljlgGeljHDOild6TKzi3xwXkKT/9hbhH3e8RbFRjnKHQrRk1qQCWNM4=@lists.infradead.org
X-Gm-Message-State: AFuF++mUfvHwIbQ1tAXpfLM/iwjetOHayiSjLB9C4icdC8Ed+JqemE1H
	8DI1rE9YvHyCcWw3/WovluWr/vXOCkZX02r4xQZR6UM596BC3XRF/QPHbVKZRl9+b4SHOv7uZaD
	zlFXIpCQyTKh1jklc2esQk1nwYgScccRUeMjcktbIuzl9t+C14Si6PvnBTCCyYrbCMeP7
X-Gm-Gg: AR+sD11wpPOFADgLFQlz4WIgOIZNpnmgsoatZXEf6gG84puo7FgCXzOC7A90PwjHrOP
	pUre/sRHg50jCpYTWMjNuIbLxxaYl3SPyuqOJKDL8e9QRrDiVwauipKI/lgE7jDwoplyAt4JVZO
	OLd+p9zpgMSvB0EMSPZrVAB/vgRmjkYCSAdsXkNC7vfzVdr4pOBHGcESlpreiPHjV4p8aZYvQn8
	nKNotml4N5ADrW54MecsLTasTBsPQ1zg1yqhvZgTkeP5rQCjH/eR2pH7b8wkfuMTWvQStMrE/hJ
	me63JV09y/3QahBA3sZo7UYpBD4PomkgPuFDkRyaLoYG1QH4bz21xMJVT0FGNV8g3rhMC9Vpngx
	6ot2j8Dj3jpMVWw==
X-Received: by 2002:a05:620a:319d:b0:937:45fb:6b95 with SMTP id af79cd13be357-93947fe52e2mr1038443885a.17.1788265365774;
        Tue, 01 Sep 2026 05:22:45 -0700 (PDT)
X-Received: by 2002:a05:620a:319d:b0:937:45fb:6b95 with SMTP id af79cd13be357-93947fe52e2mr1038429185a.17.1788265364948;
        Tue, 01 Sep 2026 05:22:44 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.178])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cdce3e04csm57938805e9.10.2026.09.01.05.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 05:22:43 -0700 (PDT)
Date: Tue, 1 Sep 2026 15:22:41 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: m31: propagate reset errors
Message-ID: <f2jjxkjwmgwxl3fgjlwdpjgjzisj6xweatqu5klvlcjgwstflu@cbxmjvgvejuy>
References: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
X-Proofpoint-GUID: Ow9fWjhkrOLYEECIyiW5H03ryQ0990OA
X-Proofpoint-ORIG-GUID: Ow9fWjhkrOLYEECIyiW5H03ryQ0990OA
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExMCBTYWx0ZWRfXxnJ8qagCw6VU
 qo6PZSrVLcI053Noz5Zp3+6sPxCv4J0+LwmBWm5RYHL/b/6ho8y1unFT5oYZj7LNGlh7IRUbocF
 ChqrpyojoHDynKn/96AJxMOnDuEjUBo=
X-Authority-Analysis: v=2.4 cv=U8eiy+ru c=1 sm=1 tr=0 ts=6a96c396 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=G5ilVN+faPP2Ze1SHB4iFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=Eo94fBGS1rxZ-i0BCloA:9 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10
 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExMCBTYWx0ZWRfX+7P7qs8fRW8R
 rIdfq0zGTths2W4LM4RotZcp1IEBWVsw6DqdPTkwMwPP1vCplXTO9K8nFXKiEQH94CVxZCfItSz
 FpA/235/gDf4IB+EfL1Ckm2E5W/mK2w/EVJ4Oct4JkVxMSCmetHsIJba6/dKWPz0d3cM585Wwj8
 e3htCn0EJQdQkDMOdvMsSBv2i8SEO992syDc+8IoAQ57BnxCI/ZdNE7ACWFjului+s2RUff/7hq
 RiaP2wwawM914qCJvPeDMDM+pyM8SFpmOpLS8zOQEUzNrfz4pZHWycavqOV+fOmhpB7hEUzsFW/
 S9IwzdPZU7YvHvTQw+5dSfxxbOH2oz7md1Kc7WVC444QAfwgIhtrbaEYIVTKQ0uBwPv68cZvE6K
 xx7QHcNNXh/6MgbDa34aPgCLaPKVuCHn+LTJQftAVChpxsVV0cuH4KkduUfWh41PEI5h4GqKTOw
 ziZMq/FUgRUZnZZMfuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 adultscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_052247_689367_45753127 
X-CRM114-Status: GOOD (  10.93  )
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

On 26-08-30 21:14:42, Pengpeng Hou wrote:
> m31usb_phy_init() enables the regulator and clock, then performs an
> unchecked
> reset pulse before reporting that the PHY powered on.
> 
> Return reset-controller errors and release the clock and regulator that
> were
> enabled for the failed power-on attempt.
> 
> Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
