Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A35D606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 23:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jB9UtNOO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=bxRpEk0D;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=FRlmoNh+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4mMc2WGaek88FGUgiFpYdMj4xjx2LAKMKYQJulwO4I=; b=jB9UtNOOnAvlmm
	O0RXi5CNj9yedtczDrkUAWylJJloH8IZT7akbStDASTU9KMw3EAwQY9V516rXmGTWsht1ut0zLWvT
	me+2BIk69KyKDM814GC8STxj5dO31H4UMcG3Y9t5x7VcixoshH16A48h1vvVFLk8K17eCIBZTPCVo
	5iseLJojBKgHIXXE3DNXq2//kbOegKFN/gK2yE0zM26+Uh6D5LhfHF4kfq+dGYnqH3G5YaGUokaO7
	KuM/n82bycFupkDlOcCnvzOFTuiN4MdOiz66MnfvBeeJWfDlxfVdq1q3Gjmo/hizokQT4ecZH6yON
	PTju3dgnyyOe2rKzCIKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJIzj-0000000Amyh-1LX6;
	Tue, 20 Oct 2026 23:11:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJIzg-0000000AmyE-1gQ8
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 23:11:45 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KKtjfD1890312
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 23:11:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qtARsC4Auod18/0Cb93J6g5b7nimOjNLB7M6YwHe+gg=; b=bxRpEk0DXBU8fjQ/
	MkgQLbp4diXe5KClxhkcqBdDEs8cZr5HRvGA6oFAdgMIT1dqy4DRHo0TagbE0ft4
	b40/AWtQF4191cgMhCNIrEHzrvu4kp6ZB30bbf6Zxw6s3kKz2zh9sBYVto56S0Mh
	drEr9xMc6Ek6AMc07bpjh3AKSq27iZMuZr+aiG58zX6hXFiiojBankFs2SrK2iyb
	25NVW9y0pwreUy5/L7TKd5sAPE6VF3/BM3eAPycoolgD09WPxBFISv1UvYiXUSNH
	TofhQwRN7gVEkzl9Ij6TwyB0+A7720LtYdrkWxyBFzskF9eKfdYXJ4B7tmCMyLAo
	lTKEhw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hebyd1bw4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 23:11:43 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-35a04491c56so170040eec.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 16:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792537903; x=1793142703; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qtARsC4Auod18/0Cb93J6g5b7nimOjNLB7M6YwHe+gg=;
        b=FRlmoNh+hCMHIt06Y72Qz8xWSTMdVa8ZGT+V4jh2Eo1wHh1ohJcQt5bYNweQ7QpHPq
         kbeDlgq9oZo7uiTSy7CQNK6FvqR+IPPd0vxKw8Zusf12TjIVoxXnRSOiR3sWwAlzay0l
         gOxHPshD6MNKrks5UXnG8lNplOOKjxlA60XIMUKuzUgSsLE184rDhmPiLIEMzTeZdvRd
         77LYaUwOja6eQFHxubJgw83kP3h7+gvla1DTcYivU7xN2LSmwHQPMUGEwybWqloA9RBU
         e2EKlx0CSMOZdvs3rZy1vJUcjMBP6opCtOPjI6Ps2bKCVZU6l1H5MkfZRqzz0szFyB6l
         qi6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792537903; x=1793142703;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qtARsC4Auod18/0Cb93J6g5b7nimOjNLB7M6YwHe+gg=;
        b=zSYWltxCdW+e1xli1NWLdoZmyr7/94FCMrgGHBr77larUUkVPmhzIUmuXyAc6Tf6Ek
         dJt9Iwpi36KlZuMAFE1+ippVYC7FCt/Tncs0K3rXKrnH9fKHaeN33fjkLHQncUO63mG9
         w3eYMuS+F+1G9RLF6WdzHv74WXPE7i8Y8rr2yuDG64q6U0uyEdrig0w+s3z6jH/DSsQS
         1rkyrV/rdT4JlXUsXR/FKCHPDXVnmBZDT2nRu5lT6BiKNOESyKZDz2ZzmmIrTFoeMGex
         BwduwS8jYr8BDY1uOKNbHRbtqiEWf8VgoHFBj/ghGJbP9geYbmib/eOo3ALTHX/0ynot
         J7Bg==
X-Forwarded-Encrypted: i=1; AKwUvBxH/IqwVTmd/1JoOxNJj2Mz2w8694hT2sydqvfAZno081bsyvG+yJSIj9chkjBrzoYcaHGBeAzGvL0=@lists.infradead.org
X-Gm-Message-State: AFq9FYL/mOCGSpiJvJIf9/tBUKnTqmaPOzSSY14VRhUH7uDpp2geFfpb
	rYpIKGOu2IWAyHqVFPnYP0fMrI0FCKU/dXfWwTfCecvdo39p6DliFTnHI/BpFVN1zKTG2oqU2FJ
	2QPr1hZ5bILrOpxYrjWhcVwkY5nvXXulxXhvptMsEP538TJtVsy58SeTpMW4Y56f+JMRF
X-Gm-Gg: AYBFou0B6u5vNV6MPLW15JG5KGHA9AI8LsFB3AfAO8MkVhlCy97gVDWCR9V0kEHDrrj
	0/pRjaVd50SS4SffcYAKQJF+k1S5qkyB3CwyKDoYHpjEZJlpXTBQ5icLqju68Lp70ZHtjGK9+Ig
	M2lXuUs0uxY15WmgiT/Z+yQ0qPGLKIM2zGbhKxphuGzr9CBI7I/LgZhGnlWR6icS/jDIhBHMX1c
	YBC2MZGPH/FZm4lia7kEZMeOu3FaIFolUCyZbUIyFmvL2rj+AzPNOFHsywvUdUpW5KNEeSsHVpU
	2nhttFkNCMPm2jrl8FTERNfXp+tb42QBd+niiBPi7rm6upSNVXVQj3Lc8XhzeW7pxu2JYu1ugxn
	QUAMP2ETI/n+snIWa/vvrNXKPGRSrmekk6UdY7N+/KbjLUphCWYNkRZTe
X-Received: by 2002:a05:7300:d58d:b0:351:606f:2832 with SMTP id 5a478bee46e88-3674c92db53mr831465eec.3.1792537902816;
        Tue, 20 Oct 2026 16:11:42 -0700 (PDT)
X-Received: by 2002:a05:7300:d58d:b0:351:606f:2832 with SMTP id 5a478bee46e88-3674c92db53mr831426eec.3.1792537902166;
        Tue, 20 Oct 2026 16:11:42 -0700 (PDT)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36740cc88b5sm1704329eec.10.2026.10.20.16.11.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 16:11:41 -0700 (PDT)
Message-ID: <471fb0e6-1a86-4ee8-b86f-3e5bc88b1918@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 16:11:39 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] phy: qcom-mipi-csi2: C-PHY for X1E80100
To: George Neacsu <geocausa@gmail.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Neil Armstrong
 <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        jigarkumar.zala@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
 <db2fffdd-634c-4728-a2a6-2ab1816b07ba@oss.qualcomm.com>
 <20261017070443.989736-1-geocausa@gmail.com>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <20261017070443.989736-1-geocausa@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA5MiBTYWx0ZWRfXw9sckhyTpX0/
 p6dRFgzOd85A6sXxAXwQX2DNdwzLAXJzopL9BicUigOLiBsUryZiy7HYaSZPuPHNdq8j4rYvCKU
 Da1pt3FeBWnp2eFYmJYIhgg/479L1fvaf4nIxWnGMwJyCnKhUULrnLOtDfNPZjdGCwe3X2Snl6O
 qr7NIY4IwEYE5CLOCWF7w/7/poooClZoUJ7EH/Lba2/kMPp17p8sYt8tiARi+zt4ea5Onn/siOE
 iZa0MVFqd/0CONFvOkFZ3LOZsV4pf3ls8IlIwRO7hDyD0par+mqLUnMbJu9/MbqkpPVpEvZu0Vf
 c0fJc+/+o7OmRMAgeUKDZSDHei031yzYVzJIkluCpTvjcMNwgOnH3JgPQiJq/16iCERr1D+wtbB
 LY2OUPnpSSqBbaLQGj82L9dk9+AU9iU5OJJ5hSnwmEDDzCIXzF5js2P5kcPrntH44H0bdBz0eWY
 uGSBmT2XIBjBR3WkfjQ==
X-Authority-Analysis: v=2.4 cv=TdsDJhQh c=1 sm=1 tr=0 ts=6ad7f52f cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=Yf9p7-GFqWoa8jJlbhQA:9 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: fMQB-LK_biKrrRTktptbdZraH8-vI7Tf
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA5MiBTYWx0ZWRfXz1foAvf5erQa
 aO3hq3mZRIaW19qYzZwjlMwyYgL5bTnym68FexQIMEuPrdfQsgZEB5LhOtjiTkBJB4tCmY2KVdL
 ghHJlmprq4c91GBkg/xdgjBgGTxO4Ao=
X-Proofpoint-GUID: fMQB-LK_biKrrRTktptbdZraH8-vI7Tf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_04,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 phishscore=0 impostorscore=0 spamscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610200092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_161144_460809_B853454A 
X-CRM114-Status: GOOD (  20.14  )
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
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi George,

Sounds good. I will release the next version of patchset which will
include the best versions of Nihal's series and mine after careful
selection.

On 10/17/2026 12:04 AM, George Neacsu wrote:
> Hi Anusha,
> 
> On 17/10/2026 05:31, Anusha Arun Nandi wrote:
>> In our series we split C-PHY hw-ops into a dedicated
>> phy-qcom-mipi-csi2-3ph-cphy.c (mirroring the existing -3ph-dphy.c
>> split)
> 
> Thanks, I had missed your July series. Your three series cover what
> this one does and more: the generic C-PHY API in its own
> phy-core-mipi-cphy.c like the D-PHY one, the C-PHY ops in their own
> file, two SoCs, and the CAMSS side including David's patches. The split
> makes sense to me, and two versions of PHY_MODE_MIPI_CPHY should not
> both go in.
> 
> So I would rather build on yours than send a v4 of this series. I will
> send the X1E80100 sequence as one patch adding it to
> phy-qcom-mipi-csi2-3ph-cphy.c on top of your series, and test the whole
> stack on the Surface Pro 11 (IMX681 on CSIPHY2, one trio at
> 2.4 Gsym/s), with Tested-by on your patches if it works.
> 
> Review of this series raised a few points that I will check against
> your patches and comment on there:
> - the settle count computed from the timer clock rate instead of a
>   fixed table value (Nihal);
> - a u64 symbol rate, so 32-bit can hold rates above 4.29 Gsym/s;
> - trios instead of lanes in the C-PHY options (Loic).
> 
> Also, Vinod and linux-phy are not on Cc for your PHY series.
> 
Thank you for the heads-up!> Bryan, Vinod: unless you would rather take
this series, I will follow
> Anusha's.
> 
> Thanks,
> George

Best Regards,
Anusha

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
