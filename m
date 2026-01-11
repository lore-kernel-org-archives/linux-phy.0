Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA865D2502D
	for <linux-phy@archiver.kernel.org>; Sun, 11 Jan 2026 19:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7Cqn8iI+XaKYZtJYUx15OjEbDkTyKU50OIc9n4Dyxw=; b=IznS+GeSSFTr4b
	XAY/o5oGs9pNZ+fU4ESOs8DmcWzzIYha9HnFqd1bH/imoFECjGR8Dlv7VHzvUd5Za3TxYmSoV7UfE
	4FHt9UEJz9JJfAcK9HGpC6cDmo7PXqRiaA9gL/ZspNj6lmA29TuGcV0EtTehPTIzeZokefCZqlTBE
	lQxAjDnlQxl0OAcr2BPJGgsY+gL0uHrPNhTML0GXRmIjC1r7R2yJet1S45bgJI6onzwbEQX7SCKQQ
	0Lt4guQzkemrh3PhoZPJtojMBwaVaBx3HNoB5IqGk64JI9/PoxrpCFFtPw5owLRcAIEv1FOc3Br9v
	lnn+kDpyCnHAoQmSGkrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf1Px-00000004SIL-0lyK;
	Sun, 11 Jan 2026 19:48:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf1Pt-00000004SHs-2vvW
	for linux-phy@lists.infradead.org;
	Sun, 11 Jan 2026 19:48:03 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BBKNNo2539697
	for <linux-phy@lists.infradead.org>; Sun, 11 Jan 2026 19:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nHiuDw2ddVdplP6yKW07d/vD
	1vfZYK+QAtQpgOAY57E=; b=MOe/hHQfWkK4mMxK6JYzQ0oEPnwa3tCDYNEK88dF
	9HMPoItIEilTqDFMg+GMBFnrrn03Bd3j12yAphOvufVzteKTKI7HyATOjazmKsjy
	5GrWXiOtY3wsso/cfsCPan3lS6aUaRi9xJm4/MggweAvxb18Rtz7+HcDL/s32xyx
	D5YykDhiXwQXviQaS4ylTXunkvx9nD2g2dyrwxZWGjh9oH5RVsp9TUbkrAaE96jN
	17I6pluA7gec12qswGVD0y63eAOfLA1HdX+k0qeL1Zm8kEJoa6MsJBS+nK5yglUq
	o4g475K9Ahv96X5Hdf5EPSTCoTMHLTrRnyQC4Kjh6B9Qrg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bkdqqtt2q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 11 Jan 2026 19:48:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bb3a245d0cso1485410285a.2
        for <linux-phy@lists.infradead.org>; Sun, 11 Jan 2026 11:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768160879; x=1768765679; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nHiuDw2ddVdplP6yKW07d/vD1vfZYK+QAtQpgOAY57E=;
        b=LhqOLJWeAb1UrGZYQd6VOmrArnN/ajU+sYlI5MsIp7eETcpsj9nLwI8sbvUOB65K7G
         20iT22fQv55NdsiHmzVK7N4pd02NH/K5SkyhbOGPAmwFGnD2ZZM7aoEQx80B5yTxn3Ml
         RSTu0fg3j6+Em9dxWToo+th5jCIjpDyIbVVT95SavhPOTcjAwjzFqGPf2XZgU3f2k3+u
         x7tf2tNVtrVBVPPBaroW3qaA63t8WGLJySya1Y+/Vlg7OY7hCplqt6ndgdXamBXx3iZm
         7LApp5/d4W8fewqG7pEF2pt52P3V3jK6/1Ing8CHuqBck5J8Oqax0qFF3uFFL1/Ys08q
         a/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768160879; x=1768765679;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nHiuDw2ddVdplP6yKW07d/vD1vfZYK+QAtQpgOAY57E=;
        b=EjazED4tlR40bqIUck7La8ic9kgXKMz1TcAO6OooEAbU8tkI4wyJXekSG7js6ZsQGD
         EcUWQw/K2KvX1sxxIqFWYr7l5f0VthIxAZRwe5f9WCW7Oe2fV7YZ1hyGZoLCsYaYvs1k
         n8Hw110eQdEFndf/WCdwDEemoZMmiCFloBy7ifGrQuNWXA5l0oYn6cyvA6AlcjXCT8SG
         jKpvtH/yfI/3sMXsVUPtPyDJR/tE0lDArxPkgn3wkY9/zjJJc01d9zQJiYbvf4mvT/Co
         yLEH8D2SkmIV0jRkJ5UUmUT0dR5qi63GMq+JuPJB5RJ/U8PHtOXqThnDJ6VloEHsrmVO
         0BYw==
X-Forwarded-Encrypted: i=1; AJvYcCWEKfn4l25/ungZzUDrAV8cXvjjkB8m2NHMfwtYqiL/l3+bBWcffuK0tVDOMbZLT0a4PcPV6HKsOiQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4Uag2upT88UDE21UxvwmWHa0n7RhC06AUKTQK4O1Vmr6nnrTM
	Q1vdGmRB+a/ur4PD3Ymq+ETiycUOplpimDIJxXm7wQADlb6YzF79t/xszsuoa91R3/JIFHjrr7f
	gCvvMarSFEuWRwoIpctdGuz9/Tznx1npNjrxjZQfAaHmt4Xp6H0fKG/15963h3yYJfk0L
X-Gm-Gg: AY/fxX7mEmwzLdh1KSH3yjeTe25Qkz6D/cBQ7WgFt3ub/Bb2Kq6DJhMHRGkqo4KDCj+
	7MahAEkC1lRr4RwMiJtQjQZjd/XizW77S4dJQ5n7pnm+WNZNY+0j/ARZnmfrU1nyJR0rZmzdkZr
	qD9Zyurh6ejX5Fogfz5FN6Cf5kyAXqVcVXho2JqoGf3ja+PuZbYIMYS1317vPEMLj4L4GJbs0/c
	7W4sx8GeqwuDjsPyOQ1T+gSCCu/OBmAJ3sixl57Fnns5yKm3jVu9YJsBlIqkN+N05Xc0HfGSuDu
	bWKsQb3tQghneioAeeJFf7RJsKRAiaBetvazZFXjSrjKKTbtctjw8QV+Qm0uUhJUNw4MNCOd15U
	jS1TXh5jP198hdY3MMkqpzFFzqjYC8g31qqCnFk7Bvh/bDzwFpGoOYubTbGOImz0AMjK+3zkld7
	+k2ILreZ7dNaDfF96TdmDTgH0=
X-Received: by 2002:a05:620a:700f:b0:8b9:d2cc:cded with SMTP id af79cd13be357-8c389405df9mr2383025085a.52.1768160879065;
        Sun, 11 Jan 2026 11:47:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDCTqIV5A/Kps7KvN8SKHD2JgyGpaNC2Byph943oUYpCROuAJrFdT7F0C1u9yeY8Tx7vh+ew==
X-Received: by 2002:a05:620a:700f:b0:8b9:d2cc:cded with SMTP id af79cd13be357-8c389405df9mr2383022485a.52.1768160878647;
        Sun, 11 Jan 2026 11:47:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8a9bddsm35110761fa.25.2026.01.11.11.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 11:47:56 -0800 (PST)
Date: Sun, 11 Jan 2026 21:47:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: qcom: edp: Fix NULL pointer dereference for phy
 v6 (x1e80100)
Message-ID: <bpji45n6zlf4exfvrup7otsr5vpwntxtbjoothjcv672e6liun@maqmiutfh5aa>
References: <20260111083317.604754-1-val@packett.cool>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260111083317.604754-1-val@packett.cool>
X-Proofpoint-ORIG-GUID: PsiGzl0ez9iL4l2VY_qPAV29L4xinTm3
X-Proofpoint-GUID: PsiGzl0ez9iL4l2VY_qPAV29L4xinTm3
X-Authority-Analysis: v=2.4 cv=a9M9NESF c=1 sm=1 tr=0 ts=6963fe70 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=VNNG1rxki-YFVapEYJsA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE4MiBTYWx0ZWRfX6n4O6c5N0rtx
 yJGYFx19nftoizDTHjavlLNtRpWA+6dwMudRskAAPK99ZaIG9I25L4JyCEUjqxjrHd7Vjo7WB7N
 EOMGosrYNkU1ww8/wqNJkdl3npX1BWNba4yzujWeSU8nxQpC3YuhF6y/LXwZCIVzF9ZYG0zks25
 W4FwBW3B7YVB9z/rBXM6qq9UYbYkUIelGpsOFGEDQPcjsKaarBC84q9twv8vX7TGwI1ApOHsFLv
 qoc7OByN0D8MFSs8YTYAYeBtUyW+68tesIZcDRzoUqubZD7OlrJ+tysfdkGENLydUXqyUr+Ze47
 cmUhmSTHmR0m/MbcDub5XeBUPdL7CjWO8UlGJGo6g7zD9+SXpt8+tj0X2BE6eTTQIERPX7b+MeM
 gYlCnIyMRXfP2OqVoQZOn4m/5vhQmErzsCpSPTfr4nvJ+w2gLTJ7V7gCxHrueHsCteP1u0wVWV/
 cAIpk6uvGcosbEIRqHg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_07,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_114801_761394_976FDEFF 
X-CRM114-Status: GOOD (  13.05  )
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

On Sun, Jan 11, 2026 at 05:25:59AM -0300, Val Packett wrote:
> For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
> stub implementation was added for the v4 of the hardware. However it
> was omitted for the v6, causing a NULL pointer dereference oops on
> Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.
> 
> Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> v2: pull R-b, reuse v4 function as suggested by Konrad
> v1: https://lore.kernel.org/all/20260109045214.5983-1-val@packett.cool/
> 
>  drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
