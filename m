Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B39E5D41D68
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 16:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPE+9JUGxY97iRxZJpEDwvdw8p8zppyg1jn4XPA51AE=; b=Tk9iS7Gi2dxh0n
	OPCCjtVTiS+KuSzpwfJ+CkOEw4aGpbe2BCc1hBX9AQ+Z7FFaD+It3GQZK6OVOczAssqO5kZQVS2s3
	j2WrRi42buJBthozd5qUMPGiv0xI9q0IhVwbblf2xPBe3Gq3sSpbb9q+gnJssBtIAiGhSypgLu/BP
	q1Q+mMTPQOxL7xEC12HSw8snn1VzBkMo4OTfiu675y9jfMbQR9MGYOVD4/GOlQ3Vn0BWcMgDdoPPJ
	AHPQ1n6qlNtSp/OHb92lVEcNyJxMivX7HiRVHBB+YMH/0JDc4rMkuVAQ5yv4rIlb04pghODbYVrfK
	gnOqbzUuS112Xy39Bodg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTjXm-0000000GuBC-0vt6;
	Thu, 11 Dec 2025 16:29:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTjXR-0000000Gtez-0dyZ
	for linux-phy@bombadil.infradead.org;
	Thu, 11 Dec 2025 16:29:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=hxkxHZZbdgiYUD1OXr0gwL5slpolaexa8OxkS2MADcQ=; b=rkufzJpSz+Be27WxZicyrJR4L6
	idggSs43bUK2SZC1WEIeHs+F1HyrUlvN1PdcMVytWxe7BOto5JFS8kw1aP/m54KvDLB+LJhIpXWOX
	Q+tkaWsky0ZU4iOB89l0GxXuxHLpgGP4YulW5kyEZbtV2VzFfA9wlKTw5Dn2A9tcUt3Z+HJplteYu
	9BnvJhxwF+xqlojN/hP+xbCFOYCsXueRLhx0KwBgDUknR9WP0qetNKYnq8DaBBpJMyF6bguPFki1u
	jYffgGsNv2LQ+k8c5+tiqtugRYw0sDBXzKf0NkekeDfEDorDPLUpS7SVXJkCFWK7E1TEYci52EfEo
	cqPWs+uw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTjXJ-0000000ETNt-0JX9
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 16:29:06 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBEPO7P2021665
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 16:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hxkxHZZbdgiYUD1OXr0gwL5s
	lpolaexa8OxkS2MADcQ=; b=C6GQuwIGytOKGVLISmcdpbINqRr+/Z29RF2AooPy
	d4lopIxw6FswWn4OsCoCOB1AvGX7D6D+HqXTANjzqOTyFd1pRh6MRdiTJfiSK2OS
	sSopqqqVJHDFJT9LZgZOK+rf/soszdZKHHnbVqnWrcSTkk+lrLoovnCQr1aJKlVv
	XlaaeZZNPyRmgsTc6qJ90hdabYYAgnLtmNuCAUaqqVb9ZLICWi8uSVvORtL2h69C
	HxF9tie3tlLvaXyjC1ZMuCAswfhvHxAjByB0iS9MWjQVdEDBLL/FpifU088SCTpA
	d9GOrpucKXe/Frfsq6Ew96slV1zcp1k420HwXpnsCj0snw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aywcxrujv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 16:28:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee1b7293e7so7284211cf.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 08:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765470535; x=1766075335; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hxkxHZZbdgiYUD1OXr0gwL5slpolaexa8OxkS2MADcQ=;
        b=eETXLgx7BJUe8EF21xFLkmvTFp8pMJ4uQF4XER3rKCL/qv5gLDhI+iZfpu+aPSu5PR
         +WTFFXKK/qmjjLFHESIPRqDA4XS8+rPS9jEQY3GJpmAGEVgg66jEYJfjhngH+qFyEDCo
         qRABpkcbtaHNFLqGaVBI6P157bysM7n3pNfHrIbU2q6ao7yIMMt53R7g2Yi6jqPPf5+Q
         DCxTZ6eZuvG7NRyZMBbD1RIKtYKz0QVvZ12XyqWnLRTARbDDSdbDPcRRcg2h6lOlOR4c
         J2RCBtHGp9l95J1Bx1g1IqYs5PQw3pAXAEnCNC64drEa2wUlt0ytWdFo8epYbnmLYi8g
         OtsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765470535; x=1766075335;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hxkxHZZbdgiYUD1OXr0gwL5slpolaexa8OxkS2MADcQ=;
        b=e5zzw1a+vur/LUnRw9ar/fLGRiqvGtu+P/Tc1Wi2WBE8kIL4kKq+Z69gpFZFmSlM0u
         eh/Oa5rG5IzRTCqfpCteVVx66VHuTs42eLBnaHyKeWbDf8rYTN+fKrd2gpTXKOm6wU5w
         P15X2DhVkUYDcgao8LQAJqmxbkhelFl0p84jvrVhlIYmh8I39JMe27+bJkoX5VslHpef
         pWgX/x9xH/cw+77Yhgt7bn8tZeVs1AYnhUA5hZ6y+e6+NbrJrKfVPfA530hQMLh6Vg8y
         6PgOB55yvYuMUks8nUAYMdK8q9nICkMJlAN9BgD4tSEfxsfaFBriUS7p4GTxm7F2gR1m
         80mg==
X-Forwarded-Encrypted: i=1; AJvYcCV5MuL5gHcaB20W+Zv5QxsRBnZDD+ZwOLO9m872gEXlAKMsVE0eS2fusif4d7WkjGKCW5gxIk46+EA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRqxwjrMOsT/Fgf5TyfvywZSKyyPRmLQ3KF93eNhKzT4WFYIGe
	nESfDOCvAe6lSszgyxy7YIiuBU6RJLI9yVCUctv3jA20oWeZzORCWA0727KexvUfrnwjYVqFcuH
	0hyJ8PC2uMUKZExbN5aa1N4OOgQ2UzECwNO6IKOtnBsz5+Yk5/gE+l7F4E43MGbDW2orE
X-Gm-Gg: AY/fxX5k05GFrJWQpO0NxghcB5VosiWs2d80/wl76AWCQlKoKkUIszA9i/dY70SK665
	MbPL8VRVEf4KvWB3LnEkGHvdFW86PQXLrsjMfcT5YjVUjCBxL7QkGMYrnlG7t5AM3Nn00iLywzQ
	xT9/CEOno7V3GUUd+7S+sVe01xDv/9uLhHW9xYu1TxIXVdSBbMuwIUlFPK/fCJC1zCE0Vaqx8Vn
	0PWLT7vmmWk+9NSHu70ABiMMeuJ4+6mPQMRcGiGBf4DZzRuaQ7Gpsbjrix2qVcwATp8BcoEUwH8
	Y/FGsIFy8R5Pr3ZuxHv7DTLFXr17EsE7YxU0RogcUs9tQQGT2TYf42BOciHjtC91m8xDwPaOmcr
	nuPS1YWEBqSahesol5LLrRg==
X-Received: by 2002:a05:622a:22a8:b0:4ee:24e8:c9ae with SMTP id d75a77b69052e-4f1b1b20b23mr96195921cf.53.1765470534745;
        Thu, 11 Dec 2025 08:28:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSiYoT2q/0E+BctPmBX9pFsraw2ImC+AAik+lVbdC19SIB1nNBrccTqXD2vlttYF0lMCwxpQ==
X-Received: by 2002:a05:622a:22a8:b0:4ee:24e8:c9ae with SMTP id d75a77b69052e-4f1b1b20b23mr96195411cf.53.1765470534214;
        Thu, 11 Dec 2025 08:28:54 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89ef9768sm46854015e9.11.2025.12.11.08.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 08:28:53 -0800 (PST)
Date: Thu, 11 Dec 2025 18:28:52 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [PATCH v3] phy: qcom-qusb2: Fix NULL pointer dereference on
 early suspend
Message-ID: <pks5jfir4rkopllzmiij2d5keiqyxxk4kqlkdeh43iqf5ypngq@k2t4gc6rtmss>
References: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=S/rUAYsP c=1 sm=1 tr=0 ts=693af147 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=01En1cxxkT8w_nZohiMA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: K4l5AewHhGeg3GcSgSqoqir7EC8Gc9qF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDEzMCBTYWx0ZWRfX84oJrg5s3ubw
 VgLBDp0o9fmH2OyJG6DoWyS+mJdh7TielOrvHom7yLq6Zx4wL7vyy9ZyMhIwH/H7KVD8n6nDS3+
 DMoQ2XIRZM1r/XU9FiTphoguEDHTGGsoi43b4fwPJ78Lm8pxI8fk74TAn2oWLrL5LyMq760XgB+
 1ar5PKoa97zvNTAhknzYOgep8Tpmn9HUU3B+NSLQ6iaSwJIJCoBWmlKL1GB7ztflFpwVr+uD/SZ
 8j8+O8w4OdnVq9JhUCDFXUHG5+ceU5Zo3KLn1AbuwK/ten4C5eYW/3bicW5mS/uYLDGxv7PEyCu
 Cpaf2AIk+5EqCdyuuLG1dvtp4KN3ybs7m2DWyL24qggxpFq6uSMYm8DoAKcrGgGDEpX37Sw12ch
 FOUdbryETFp+5D6b8InxECTtg5ePiw==
X-Proofpoint-ORIG-GUID: K4l5AewHhGeg3GcSgSqoqir7EC8Gc9qF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_162901_387559_90BE193B 
X-CRM114-Status: GOOD (  13.77  )
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

On 25-12-11 16:35:36, Loic Poulain wrote:
> Enabling runtime PM before attaching the QPHY instance as driver data
> can lead to a NULL pointer dereference in runtime PM callbacks that
> expect valid driver data. There is a small window where the suspend
> callback may run after PM runtime enabling and before runtime forbid.
> This causes a sporadic crash during boot:
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
> Attach the QPHY instance as driver data before enabling runtime PM to
> prevent NULL pointer dereference in runtime PM callbacks.
> 
> Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
> short window where an unnecessary runtime suspend can occur.
> 
> Use the devres-managed version to ensure PM runtime is symmetrically
> disabled during driver removal for proper cleanup.
> 
> Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
