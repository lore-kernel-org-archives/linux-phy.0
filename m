Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E24A2E98E11
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 09:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REd+1D41fCc6/V/wmSrJgXrldSDqIZ1pNElNZUt5k2k=; b=U/dGcJFOzzZj9m
	ztO1oxalGr8ZEUHx8DReZLTMzlUrZP26ygeW8Q2HKTnaEirnLymkqC9hkTAdi0XEY3RwxqQ0ykUmy
	5ZAvUylz1OUqe4Yw5NXLisbP8p/VVDmrij2Bs7nZ2ovF0pEGZy8e/RVpn+f49SIJuO/A0Hlg89KwD
	wysztvPen9rtteVMeYeCT9/Yi57OdzO0qewwhujYnJGQ6uacPbWa2y++IdYJ2iI65Vw2NTW+H8hJK
	cia3K7opEUMjgU9PgDU9OAi2yrMc0l25IKCPVddbSlFz4TQtPMX519HMhiZEKb0CujwwJyqLc6l9D
	Ajvfmt2+SGmoL7wweqgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSe2-0000000HaY7-2XBH;
	Mon, 23 Feb 2026 09:54:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSdz-0000000HaXG-2i39
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 09:54:24 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N9jlcQ1953696
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 09:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pMJwRoenSFg2hWtcaGyYH8c9
	1ypYkTPXJQa7dQ0lvIo=; b=BDEBQYHNvvIodIsKxbVwYcsC/q55fMTVS8gWXSn1
	MvlVMX+3JOBrmIW2f0FYtqQF0zbS7d3tCBxxVzCURPXuzIIfBLsqHHP/YLgnjWi9
	OiZUT+7M00nUxbDFIWgxX/bOW8X7GQ3tk0EX62ZL2++o7vr12d05QZszV+TiDlLa
	PC/IELJi2W/iuEr3GvdymOFzrOSReh8b/OMzDkuIxfVQuRGAElNfz0FcMahEgEtp
	9hnnBQ59d9E9TY+up3xVynDcHVGEoGVevKt3NxQ10pBbWXL52sJYSBwqsdDM4Sl0
	RWr/t+bjK7Pr7g+CfHSUjWoTcVaROPZPUNPWBjGJrd3SLQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wbc8qd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 09:54:23 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3562171b56dso4542240a91.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 01:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771840462; x=1772445262; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pMJwRoenSFg2hWtcaGyYH8c91ypYkTPXJQa7dQ0lvIo=;
        b=Mt/QCpeeoiVjNEhL/ALn2Pt23ZAA8NrUjv/iYm/FT9vKWWBMFYL6es8cmZFhhQrYQ/
         DmJBDMuBtp/n2didilLSO0Wqur7SH8Xt9CEfNvWZV8qPz3kBTX/3Pxu027MieEKg37eP
         o1NpOhAVCaY4ljzsH6Vv1Rgihfqaa2FYVHyeK+lf3a0xUD6T8MPdzemPRc4xli5xiu0X
         +Q/Qa3WGLkHiFWArIgRTl5A8MhoLaFHNy1TLQCia4y7O533iqZj5cesvwN/QmKCWbXD6
         u5gCoalcUlGK4FKip7Rbj2d+m7Kz3bsCFB8YWP4foTtnGz2690fMchjeRxf6ZekUYc2M
         XTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771840462; x=1772445262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pMJwRoenSFg2hWtcaGyYH8c91ypYkTPXJQa7dQ0lvIo=;
        b=cHQS4m6AWcWtiaQOVfkD6qUP6/SRYNa/2YyHxjwfY3W+dyVc82JmGfQabVlIilnMDM
         9nGZoOpFZby9mG0mF62TZMMM+4ZWHHDlUBlg7VJZOcw7BVeEHvlH5nxauNzrB/EEapzY
         M+MLKvgZMDsTVfKYMWKdNDWHizR4rOB6BDFJMnMnmsY9URFqpVSZva2LbCzhwu8mluZ9
         HqfEEisJFWhMjot60MLHyWCcIanKLasIWjL+Rx06ViQwEvWKMWpJQlQXCNmn9/i/qv6V
         yMd2MsxpLMRwMYyIev/0w5vaJE3buwe4wcNe7du5FFktahJvZRNA9YI+RC3YblR4KGNK
         hw3A==
X-Forwarded-Encrypted: i=1; AJvYcCWzOJAQBdFiNAwrl6xVi8GEj9fv4PFnqV6F/yDeIZTnn2HDYWSOwfwp6jredUIk6UaBkD3y/6M8Kpg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6tb/FiqtFzoeVdD33Zjcr25t6fy9clGXKRC4MQNibZUW5bqp9
	an7F9YuiBBreboW7suaH6D0Vx5j2m+t19p8gQrY0EyfKYOu/w7EBoSADb1HIjQonVhpR68GL9J3
	+de7VEDdEDIaS+hQqCEDX1AhBY10urV9vY/Xx0WRDlNKhDs1xWQt94sO0n9idtVSYhu9t
X-Gm-Gg: ATEYQzz+bA1dTLF9uCMKFL10Ma7v74AW6zHlh80EyQEi+L9bE58Psp7sJyWkv3JuJZ3
	Mgu/f1yiwUDSfk8e3d0FC23HSVeKGNgFiXqNWK8DG5Uv1Lgz//RJ3XVT1XsifTtd3qzie5FI4Np
	8+RWxGsyG7HigZ/+FJ0sBFwFaJZl8Hc1Kv7due4KGHHK9gr6/WaYkllSz+3tU2C4R4p4/YZOnOD
	hcQXsodyq5ygwHxKC6EbWf4udcRjb1v30lw7mEgpk6D8pdh1O4LKC+UWK56aI503f4KaIIrPJLt
	LJXgjtmrgBMggQnClUK5OOht6SlqpOar2yeg1kgBvV7m5WjxDaIelITNTfswxF1M2qSaoG83/bd
	IzWg3giHzpfgs9b8vAgj38kH9mh5tBdgy5hQ=
X-Received: by 2002:a17:90b:48ce:b0:340:ec6f:5ac5 with SMTP id 98e67ed59e1d1-358ae7c3134mr5861408a91.2.1771840462349;
        Mon, 23 Feb 2026 01:54:22 -0800 (PST)
X-Received: by 2002:a17:90b:48ce:b0:340:ec6f:5ac5 with SMTP id 98e67ed59e1d1-358ae7c3134mr5861383a91.2.1771840461811;
        Mon, 23 Feb 2026 01:54:21 -0800 (PST)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358af93b9d1sm6128924a91.15.2026.02.23.01.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 01:54:21 -0800 (PST)
Date: Mon, 23 Feb 2026 15:24:15 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RFC net-next+ 9/9] net: stmmac: qcom-ethqos: remove
 phy_set_mode_ext() after phy_power_on()
Message-ID: <aZwjx9pKFROhF5DN@oss.qualcomm.com>
References: <aZcGxDBwfMXHbo_O@shell.armlinux.org.uk>
 <E1vt3Us-0000000A5ei-04Bg@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vt3Us-0000000A5ei-04Bg@rmk-PC.armlinux.org.uk>
X-Proofpoint-ORIG-GUID: SJh3OEduPgGd-YSgOtp4pCcV1gxn06NN
X-Authority-Analysis: v=2.4 cv=UZlciaSN c=1 sm=1 tr=0 ts=699c23cf cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=PHq6YzTAAAAA:8 a=EUspDBNiAAAA:8 a=_j33rwhWCIcg66mWb4UA:9 a=CjuIK1q_8ugA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-GUID: SJh3OEduPgGd-YSgOtp4pCcV1gxn06NN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA4NCBTYWx0ZWRfX1iioJglnGgKl
 j0O9YyrZVwxRKAaoaqrcqeXnVAJfsdgrJGJktyH02RFbsm+cw9b9Q1FVIr8dhYG/IA980+leJBd
 2oDcUK8H4i2ixJ8pVtcxe6woPBUC2uDC4i+4Crg47WlYJenk36tJ8REqSTNmsYTz0pZHqo0UYkT
 oepufGuR+PA/DXxe0ou1clNzXDdup5Z6lpcqEU97Jbig2GngOGqyvfJ43nFWMnMDW27Kp7fd/lr
 i4N52U2ISU2zi5tpW3hiODOqfIvm8o+NZaouQ0yBp8Lsq09D41c+viUGVnLShUZ/tCv6QYF6sW9
 4f9WKiQPV6C7n6BPn27ItMrFVwilvRm4OSm1yCuEb022sS9r8MET/OPxrRoYOotBu5xWXcv/wNE
 KR0IkDT6v1GqgmA4g6G/KpBSIWrIyfWS+87D+JRLhg4+g9nPFHM510ss1qPgTJqkXM+a2REPt2z
 IRPjY0ZHiIO5MCB1KxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_015423_689374_6FC900A1 
X-CRM114-Status: GOOD (  21.50  )
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

On Thu, Feb 19, 2026 at 12:51:10PM +0000, Russell King (Oracle) wrote:
> The call to phy_set_mode_ext() after phy_power_on() was a work-around
> for the qcom-sgmii-eth SerDes driver that only re-enabled its clocks on
> phy_power_on() but did not configure the PHY. Now that the SerDes driver
> fully configures the SerDes at phy_power_on(), there is no need to call
> phy_set_mode_ext() immediately afterwards.
> 
> This also means we no longer need to record the previous operating mode
> of the driver - this is up to the SerDes driver. In any case, the only
> thing that we care about is the SerDes provides the necessary clocks to
> the stmmac core to allow it to reset at this point. The actual mode is
> irrelevant at this point as the correct mode will be configured in
> ethqos_mac_finish_serdes() just before the network device is brought
> online.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
>  .../stmicro/stmmac/dwmac-qcom-ethqos.c         | 18 ++----------------
>  1 file changed, 2 insertions(+), 16 deletions(-)
> 

Reviewed-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
