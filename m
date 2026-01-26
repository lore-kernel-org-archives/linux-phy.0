Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B58F5CF65E5
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 12:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqahXN0tmzML+/dQU63mLSlSQ2S9IlOZoEIzs6rdoz8=; b=En0UBcaVYuz1kz
	OWobbocTCzT0XXeEZ1NzK3l1RHW/A7Dy3n4t+YKp+iLjnOKFcDhncLDKzcGfOvLbe5hazQXUBcG+g
	qcUg2fCy58mIc++KpnFAnuoW8999aNF/kCU1ggU0nYHZL/mLERr8NWkgvXas7AnUhWsA2Py8wHqnj
	9Lt/SV55/RlVrAjXsRGdMreWdt6JhQ19Ys0jj0JMIPOeoYEEYt8WNg1M6YEG420mrRudlpoFIf8BI
	fYDPv6eDSW0mRAmqZxwSOP8k19m1+ciehN9Pn+h8bSi4SKQPtzJwNRgsfFqLNm4Tbd1ae6OhaESQg
	ATk/nzVJ5LeV1XezHVyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLJV-0000000CU6s-1xyR;
	Mon, 26 Jan 2026 12:03:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLJT-0000000CU6G-15sG
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 12:03:24 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q41AUM1362540
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:03:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/VC2SGb90A1gRmexI3njtHhH
	8IpVN9uAtpSh6axfDvU=; b=gX8WV5RGGggX+miADQKAhzI4Sgs5lUmnFNGaZY6T
	M2bMV5rC2y2Czn8N0BNEQTwbSg2WCMR0HJF6WJPVo9LSJQVMQxhKWpIXB0SguXXr
	9M3dLwOJxRhZU/3jrL9W7/9IylYCn3kTzQiwy/J7TF1PXRPSDCELNB5eo4aH734J
	pSIlNT3MhsMZgbNn5GalxsW0Pre7YKrAFnAZFB1bnzY5sdTPPJ3Iw0lFwWOY+qG2
	mdlvVV88rfBg93akBdBo0zl7UHoyDtjau8PcDL8P9DJUt81UrDPr18IUibPqlc3l
	rZfNLfPofJb62KrACJlEjE8EcqdMivhEo9BToP+zDSMnHg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bx0v3132f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:03:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52fd4cca2so1379901385a.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 04:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769429002; x=1770033802; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/VC2SGb90A1gRmexI3njtHhH8IpVN9uAtpSh6axfDvU=;
        b=AjBe7Zi2u3XPyRs87PWGEjokFdU5gyHHR293p1mxELaVdivZIFVa+X3ZzmWYgcxa4X
         HD+LcFQa47iMQhh+Gt0qXBpJWXa/kyYVpEgXaHUJbyu7W2SJNLuEjNdjtn/ix5wa2M61
         FepB4E3PT0VBxSM3ORxvp+Y2gT+vIzosHtEAeIsaM/X8zncSpwBqpxvFUTaLE//7Hhgx
         bOQwQJkoRBr6Y1YYxWprTwXgKHHD4QXdHPIfWcUbbB7ZFKtSRsCILlsfRyToBu+UsJ6Y
         5tqY90gwA8POAaP6u0LJiuZuFhNfLlDsVIT9P1lE5nl04L2lrdfHdk7LVTxSS49ocNv6
         E4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769429002; x=1770033802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/VC2SGb90A1gRmexI3njtHhH8IpVN9uAtpSh6axfDvU=;
        b=lXgPwe06Djkctf35xcJPSFDg8RalwiEvqvBUC4YntnxIgIT6qTsBTT7Cv/a1oWoIE2
         tGie0GoxSbwZv9LsbUxFvM5DEwwrY5Acr7Z+6eTp+PM6xWXiWSdAKnP0DM/We3bBQxrJ
         QXQRzuA9E5pRWKsqiY2z6FpNvoD6yvjrbrFqrSaRHoLTk3BeKBkbR/1X3UqcpWOe/W7q
         s5msb0ynCA2TjXXNU3hMzohnKOHCxEPEWYi3m9MFIB23AXGHCr7Z3JxnzVd8o9eJzPVo
         kgnn3ICq/Iymsb1ZlRGGdtE+lt5MAvM3in+ctLPtgAhQ3lcoOCkBhHLjk8cvwaCqZOS1
         ZjYw==
X-Forwarded-Encrypted: i=1; AJvYcCVrfnQgLKtA4/el9j0IUK+WH2lMoDIxzgBXTwTu6oNVMeztMMP8qxTcMCmecv5j4hAeh/HMUTHnhCk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtETZNFhbA4QexxL27BHlpJTOtXCRquMS9kAo/vxTjTDYG4sS7
	W2iP3NyuHD6cN2PGj5+jmahkqfly4gnFOS9twgye7NTxpK789/ZAUfxyRZ9rBYmBBHYjGuBn6zo
	lFLROpSuhwlhh6wr6fjnmUPLldnhspsh0jLxtyJqH8IwFmcB8nvZ+/o9IImsGUfV47YyE
X-Gm-Gg: AZuq6aLWbKi7GiYnYNmiD+pQlt85AuvtHQidaCgHDH2N4R+1a5bgUllmwqGTaOjS5Q/
	VHQ6tkTj+QqlrzwyRi1HUyf7FBjH1DpTPji2pzqh050pqHpnTbEBD9Ns1eq69ph52Cy00GtBbl0
	LRPrZDRDfviQWzpmKsZzdxFh7DDTkhgUpE/y+dG0NblW9P/+kjRM7UYIa9/FxqZzxOXFYfYhU9F
	ArnXjLDFpDjUw5bqqLDn1NL7BWrfGlbJezzBEKWJ6JqYKWDfn8Vat7gtWGLy6gZ5rNX75ogc2vY
	KNDFkMmxZcI4xkG7tb5ceY4wTYW/DzI3L3/TbF5wBHefzYGwp1QJlyn/e30MifACNPyyzvdPi7T
	aCGSEHNaaPuaPZhNlqvoweZqu
X-Received: by 2002:a05:620a:1aaa:b0:8b2:7608:1ee0 with SMTP id af79cd13be357-8c6f96dadf7mr500263185a.71.1769429001632;
        Mon, 26 Jan 2026 04:03:21 -0800 (PST)
X-Received: by 2002:a05:620a:1aaa:b0:8b2:7608:1ee0 with SMTP id af79cd13be357-8c6f96dadf7mr500257585a.71.1769429001155;
        Mon, 26 Jan 2026 04:03:21 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804db8da59sm103399715e9.5.2026.01.26.04.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 04:03:20 -0800 (PST)
Date: Mon, 26 Jan 2026 14:03:19 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com
Subject: Re: [PATCH v2 5/6] phy: qcom: qmp-usb-legacy: Prevent unnecessary PM
 runtime suspend at boot
Message-ID: <3uls7yafyfzxd3pl6el2f3r6jdwzjrw2anuto2op4zgcxerq4c@gxl5yj56jvbb>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-6-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121142827.2583-6-loic.poulain@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEwMyBTYWx0ZWRfXwnyvFSXStxMn
 yZBEd5ylSlOKp3OEQ9AduhsyZ5R+DVPSTX33iQIL8N1IK9u6chtEQv9kodqeso9k/eDLPPhxzeb
 2HcpdRvuJJWuQIv35kDztVeeybb/dRveEDpmKxHmJIE5YhevJf18w6J60hlbq1g1719IBNSWokC
 GYP0+eCWALW2Twq59uoCjBWnpIitRF4eqesWiD7qgFZxmIhUnuenxPwZpTCj3iHB5NKtyL2fYJs
 ovbl9Ww2e0uo7pVVtniSoJOKzHAXBMxlsd2ljLv5ZhODIpbP6qy+2JBIHuLTQIsp+hRMs0Qw/+e
 KzviYBT/Opy7FhF07+R31kotLk9XyIyPsiPM4rHNMEQqb3Let8jIKFX/hfsAiZVG9lWQu1Y5Ylo
 9BcAsKK0zPSmBA1RiTKabTUVBej5O05w69DA5bbDA+/8YQuXEh5tczdlnk3h6JVj0kPdTip5seU
 9IF2TMDlTl1pEDvajFw==
X-Proofpoint-GUID: Zj55mau3C-jc21zXcm1jHh3-JuPUC3Y6
X-Proofpoint-ORIG-GUID: Zj55mau3C-jc21zXcm1jHh3-JuPUC3Y6
X-Authority-Analysis: v=2.4 cv=JYyxbEKV c=1 sm=1 tr=0 ts=6977580a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=I_ukrOqQsWpVYGr8uL4A:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 phishscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_040323_323754_391154F0 
X-CRM114-Status: GOOD (  11.20  )
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

On 26-01-21 15:28:26, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
