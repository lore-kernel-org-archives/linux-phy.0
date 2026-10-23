Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294D3606A31D
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 10:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jYozy8Q4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=k6fcnEVF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=bF9xneCv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ekP7g2DMQCFcYdam41XK1aRmXa2ljObm/w2WiSgS+1Y=; b=jYozy8Q4NAbbEVNc2Ee2egBStp
	rd0OtVrN7RTYq1AveESYjbwz3br3z3xdO/98RrOOaVYjRZ9LJQU4khLq/OqXwUVaZkQM3F7bRTBpR
	csMuNCTIIo/PvTcmp1p+IckUygDWAadXN01L8QHkOMDS1FGUMOQOu8jtCD0vcvJXRYVMR3ekyI4Vo
	tRhQD1E/o8a0bjhlIcIR0jyLN3FA3HDQId4PA0DqDcox3M/8U8TU+kZitMQEU93xgcqp/C3VJPISG
	/RCbxgjE3nSjpWQLD4HPTJRLOXb8oQ2woLpi+PbvDQ+yKbUvcLjZfz19nSIx712D1QdDXo7+ekmij
	4ZdDf+Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKCRT-0000000G9bU-2Sr4;
	Fri, 23 Oct 2026 10:24:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKCRQ-0000000G9al-3AT3
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 10:24:05 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69NAAWM73560971
	for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 10:24:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AB1BQQvVTkQHNjM+5OSNHokWQOtdwlR/NDdlUhu12m0=; b=k6fcnEVFqKFqohpu
	26hkUttDEURZCKKo3dqJ/CGgx8kw7R0zM/0d2FdEZSi7r+zGMS/s9YUn2mSomQnf
	iWl3hJJHL7UMsfuzWzK8ILQ6cWQVsNFLNjeVp6PLqvzRkJqJcwPZ+CuNLnjsDc0U
	bmCobvZOP75/U/b0J/ryfHEh18Zr/8TNZe3zEV9KWtt8R6wqlaL46bjZZhdLosEb
	Gtbk9wT7fklnZg9bF3JdbwA7SiPP/H8gsOLnkfAy2oKK/iGeECt3wZyHtgLprzU1
	Wvr1qb8FnxlNpUS1MB7MxI3kzoXsl7kYv/F0wx66rTuX7fzt1Dup8W42Z2oDFWTI
	jXdOmQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hfqmpb6p7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 10:24:03 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93edac58b24so18673685a.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 03:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792751042; x=1793355842; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AB1BQQvVTkQHNjM+5OSNHokWQOtdwlR/NDdlUhu12m0=;
        b=bF9xneCvifJM48LI2O4FDyWi/sWvkdYeBo/8emewEJ9e7a8TkxvSvA/OD0T6s8mESy
         Ys0uN/0394r8UT+VYQ9NhKzZDuPEejVFIofAXBIrpXjR72OuOFK20K3KtFTUrLaKe9Dp
         0Z4qvklSyeOT+kcny3ZiHBu2/Y59Ylir+IGUfv+MXlls5SORTzUgOAyh5s+5Xl3iMrZ+
         LwdgCFkni9CGYqwzzbf/4OQNWt4Xzld09OcGJ+TL5TtsvyynM3M7mCRXLE+CrS63ujw3
         YaxuAow3kcPLhvVthK47jl1jLdZFdeMSRX+EStLTaqQPPMWrmBt3BYuNsZJe6RkFgoKM
         9sog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792751042; x=1793355842;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AB1BQQvVTkQHNjM+5OSNHokWQOtdwlR/NDdlUhu12m0=;
        b=YacFgDThFv8DeCxwvodl8zw2v6OJ1t+Sd6vxoSwZkc5hQqV1JBjfXxQdz/90j19RR7
         s3zRXiMU5DPbsdAwb1iKxU1flKqgL/edmoPQG9z/G+yySSugq3xZg6t4GDVa2f/F0Kqd
         EKiUMvbcBMCCZT9UFyG/g8yqn6k+crsGKc+mBtnI5yUJnqT/JwKv01cojngAxyGD4kI0
         HaBV7SYwQHqFyy3TK2deV9ALvereLEPKbju+gkmMyfXBl36r5VyObhPiel/jq1RiPVwu
         s3jwNvFIQD2C9ukqoTXOAaxg6rvTGaPxySwsTxQ9rT3MB6DEHNRbV83wKNGmU/1po5dq
         uGcQ==
X-Forwarded-Encrypted: i=1; AKwUvBxAPE3s7kdUNNW2puK5eeUTBf/xbPrcsX4YT1AeSe103WTOB64Rtm71UiGclS2GojCOj9b+38G2rwY=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ91CYohIMTPvXylcV/nuKJlr+i0/P9YhOLFRAspYXcoLGI4kN2
	MUHyCXfo2sVWqAGgRwKV6FcvaeTH9BzYndmqHBdfO9DkRhme2rDL2LyIO9d8IbDW5D7vaXcL9vs
	6L28gxufjMaZxthCD3wBw8OpHtgpJ+PPBLJwGWyoA666NkGnDXi15oM+XWyefb6udEBz6
X-Gm-Gg: AYBFou19eSPkAz5cCNuGTebaCqykxbOe9gbweDbsXeConHTHmMelmQeFw+LkU6tak+0
	cMCboOIwebasjQeKRER+SsyWPrvq8ZyiCXVCHJY40+HVBw9Ub7tHnmNbfZINndQqvHf1Bnyy65u
	JHWB5tJAmP0SEgJGk0iX6cuFNzofFDVHdkbca8CQLt46rtEv4pj/YLvzT1ym6YClMRgxyVOCPT8
	7Cn84+pdHMKWsPvOpZtA9BeckbaY1Q663fgirJ0ITD4wfsPTUQiCIrFnUprFL0piHH0F7B3tGNy
	3GIYA2i1eW5IA05piRMrBz9LjTYeQFViN4Jbqbd2sZiAQZtumFgyDbAhkE2459t8yZaEs302IOK
	9Wajs3kgHZkFP9arkZxa8Dg==
X-Received: by 2002:ae9:e208:0:b0:93e:e111:2771 with SMTP id af79cd13be357-93f6f7c51c8mr345313785a.2.1792751042391;
        Fri, 23 Oct 2026 03:24:02 -0700 (PDT)
X-Received: by 2002:ae9:e208:0:b0:93e:e111:2771 with SMTP id af79cd13be357-93f6f7c51c8mr345311285a.2.1792751041992;
        Fri, 23 Oct 2026 03:24:01 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c46a5cb7fc6sm86648666b.51.2026.10.23.03.23.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2026 03:24:01 -0700 (PDT)
Message-ID: <de3e5baf-dab5-417b-a9ed-225cbc56ce1a@oss.qualcomm.com>
Date: Fri, 23 Oct 2026 12:23:59 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] phy: qcom: qmp-combo: Add PM suspend/resume
 callbacks
To: Prashanth K <prashanth.k@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
 <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261022104321.306679-2-prashanth.k@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIzMDA0MCBTYWx0ZWRfXzwR/6VWPbEjM
 ikR5DzXZi/4IZUhrFytIGEl3ELUUy+vN3KmDQQYZOPcR+neJ3yNv5lcoLb8ZpGcEFLv5sRyLeg/
 NCFqjHNOGxcUQY2cSeeucBIFKhV7DaM=
X-Proofpoint-GUID: qYz1shNncyO4VPV04svDeFqTZetu2NOH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIzMDA0MCBTYWx0ZWRfXzvsK2BbX5QvR
 22uoaYNhwNw4LpCvWcC7L5JevO9+zgx/Z+0a461YwppzCijrGSgduOn+l/4iLN4niZAoaaz4NC4
 B9s/8L48g5YmXuLQnkH1+7JaDrMa/lxVigBZNzZUI0/fgO9YcGwL0SsFShvn6d1ZjJb8WRj/0dv
 jiUhGSn2Wn7KUsuk5y5bHmrTTqDgUMWaLx2wsGu/Wwxz9VYDOzUB98D3j9iXnw5nIf7JnP7rOR8
 rw9Gbxz9/7TGPre3/JCr/ORSJtDFBvCgLKsrlemg9M0Bpz6//qGfoWI+emTtEt3sfBAqQ/H4Q9+
 p2fSN9mCNyNFW6q2Lh+7Qi598AE4B1diyUwsma7d697xS9FnYRPUXqMtDaKxnEBSnWnOvPhLm1+
 ig2IkLgnD/CofJwy0baS+DezOcXW0baQWQZ6u/FbBmrCq4QcFRQNbvEeYe7dRl9JmdmXWB2BJzS
 lrMYSJUgL+pkE+jFYGw==
X-Proofpoint-ORIG-GUID: qYz1shNncyO4VPV04svDeFqTZetu2NOH
X-Authority-Analysis: v=2.4 cv=BdBNQbt2 c=1 sm=1 tr=0 ts=6adb35c3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=fBNUL6i4Ua7AmJppQHsA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-23_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610230040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_032404_809513_C2B5675A 
X-CRM114-Status: GOOD (  17.49  )
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
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/22/26 12:43 PM, Prashanth K wrote:
> Currently when we perform system suspend, the phy clocks aren't
> turned off leading to power leakage. Prevent this by adding PM
> suspend/resume callbacks for the qmp-combo-phy which toggles
> clocks on/off correspondingly.
> 
> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
> ---

Well this still leaves pm_runtime_forbid() in the probe function..

>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index c39ced168d03..f624195c9b84 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -4463,9 +4463,26 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
>  	return 0;
>  }
>  
> +static int __maybe_unused qmp_combo_pm_suspend(struct device *dev)
> +{
> +	if (pm_runtime_suspended(dev))
> +		return 0;
> +
> +	return qmp_combo_runtime_suspend(dev);
> +}
> +
> +static int __maybe_unused qmp_combo_pm_resume(struct device *dev)
> +{
> +	if (pm_runtime_suspended(dev))
> +		return 0;
> +
> +	return qmp_combo_runtime_resume(dev);
> +}
> +
>  static const struct dev_pm_ops qmp_combo_pm_ops = {
>  	SET_RUNTIME_PM_OPS(qmp_combo_runtime_suspend,
>  			   qmp_combo_runtime_resume, NULL)
> +	SET_SYSTEM_SLEEP_PM_OPS(qmp_combo_pm_suspend, qmp_combo_pm_resume)

You can instead do

+	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				pm_runtime_force_resume)

and as a related fix, we should probably throw a mutex guard into the
runtime pm functions

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
