Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 108B7C61DD7
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 11:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeiofXXT+8MUG8lefxgUdshghjv1YPk2cOq8kX+SbDc=; b=dMhexMHntMrqa8
	zHNRhr9to0SeCMl9785eQCWoDsQnSLtG67NOc0MNN4ISL49jdqg7iNJKOXYc6L1uRhRFp0YOIneVg
	6y3ND7HW7lVC8i3tAw+bAm/xu6uPJ924Ovh9X5jwZ9xoHuoCwHofhKhr2CcaSofe9hFgoRhdeisOX
	VX7OAeBwJv1U1vptWQlCmGmE9zoINZ8FSwokmMCe7pIFDAyRiBGZKZ0EcTi/7I/bGdNUBly0zttKu
	x+Ai15tLq6EgDbjOSKaHdN4w+C4pRvQOmz1nw0AwJsQyqHw9YVpNIjOVeWK9v1LuD7DnG+rbpXjpX
	QX3SnuvPk5dWI9+KI20Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzuT6-00000005cik-2Rz9;
	Fri, 28 Aug 2026 11:09:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzuT4-00000005ciP-15ls
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 11:09:55 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA88P02596122
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 11:09:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wfjkYwfc/urAj1g5/jLWsi5W/7GenoznP33mhqucrfQ=; b=a7YRuy0J7cPEMIIC
	GkOx3wlKlUTaAmcGKlYYGIqu05nJjfQ9mjJsn2dAKv32y1EvjolWQyJ6RoLoGxxe
	jUHDPElU/73Vs1MX4VHu78MmSwEmXFZS943Vasli1omemmyonl1bmzSxc93fMlIC
	UbcKVIZ99vS1gfZI10jM2xVBleXQfirx2g3yn0EwvJklXpf042viiFPa4DmTHXU2
	FsAD14+dn23CHvo3Bd/QPueBfU+rIFG+ST85/h+qu2S06C8ZkQsNkbtqZR+eBatX
	UvMsEVjKLmCab+dmOQKpTgsTbOzJD2yFOO4j6lG9kDkzPMKTuIhiz4l7YPHfc4Pk
	fQXHqw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb1v39wbb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 11:09:52 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51ca37ce4c3so1601651cf.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 04:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787915392; x=1788520192; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wfjkYwfc/urAj1g5/jLWsi5W/7GenoznP33mhqucrfQ=;
        b=epgZutO7tTrnOExWSAfl7sKcaJt4NKiwF9Hv0rG4f87/C905nb0tR9ySs+upWyJJR+
         YhvpKnyr5NIZwuN6ysqan+NaWw2p7hdO3mcTIyN5KuiyLYR7l8iTzwMDAIhC6Pm0z37p
         zqlCdl0o3pq8fvsgurkfa877BqQZTxuEySn6RwGoe6mIN2xt8vycF6ftYygdbgLTat33
         D+KvH7sjSmw5ZyNKysrTSSLEBKBzgpcK1GxGmTXrSkhBEUQaWYovxPj2E7+kzrh/ZFk7
         ja6y6Cbb/XlXGXw/HBobiRmihCCygbn6LQWiUMRfuKAnEb9tI62OwXTLzK4+zw1xD9W3
         Kksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787915392; x=1788520192;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wfjkYwfc/urAj1g5/jLWsi5W/7GenoznP33mhqucrfQ=;
        b=d6rDz6COYGbqFD8GgNU3S+LdcaBxt2mOfqjjity3d9md89DLDw/qu9oV+5D7RrSib4
         L+Rp1G9g7lXOqV2QGWd4zuo+Atx3WQXD0XoHYVClhovsv63ltZ7gTa+q0KtvSbHvGATT
         xQ3jmZRlZuYTBg5+sM08bkSyoX9eyhkk+tTA4FOI0fEjIShUn6NvnS8VzFfJvZYgSuaI
         ajhvEB8OgBnk/TBOoKQoxElu293upDyIu0AdN6e4LKXhXrgYesWIMTvBvFRpOlLkrCZ/
         hdvI0F8MTUSHw3NZ2xwLdK4HFpKdzmijgoV6hWaFpKOjM7Vtr5PCjUZGoe0gNwfDjI1/
         YzOA==
X-Forwarded-Encrypted: i=1; AHgh+RrfhM7yCrzflf70ZyBD1a6e0k3BCUYCMvBVLnIOCQUjcQ7VOPW7j6DP9gl2LQh6DgDhHvEPUQj4mMA=@lists.infradead.org
X-Gm-Message-State: AFuF++k5F7iim2ggC+JvrCUxYWJXl4EtuxFioRR5fRXHhpoEpgfjKifN
	pFxpydBM3TaGbmvJ3R2g3/eeD7qt3P0qBTdPa2QCG8RTVbiSIYj8n/Mn5zz7TTGIX5kfYUQ4PqW
	0euz2rcQZ9bjdaHH4/oM8wYOaSjp34X05ahKlhfOv7Gi4qZNMlG0W4DK2Au0yzFr7cYLa
X-Gm-Gg: AR+sD10icp6+vGWl4Z/zW6KcqGlJBUo57VyHn+8DUPNG2ePxYzBgpge9Hg35IwtRDbV
	RSbJ+quYzQc6MTqp6VbTjU7QBU0FNEdfvpkmIB7sXNX2JecdnBm/6L8cIZE6yVuaDsDpLN7JhWE
	XVjlNMF/w6Qai24AOko2XjOaOF0r7QzC0hZIcBz+uczORLdwRNkRTx42Fe8EYzZJCbjiDaNX+5s
	YfL1Or0lXZwoENiXLL40N7GwMf0maZTpy8C6lg/bST5Mp2XBODIfucaMeOZGrVzS44Z9OhOovpO
	nWobbIIwDkwlHMyuDwMZnCcW8WcQXVQmoB7d02xUxvqEmMsBZPRBZmOnieVwr5o8aVG9uQLRYsf
	qa9TnhtxJIkIOeoi60OGjX6w=
X-Received: by 2002:a05:622a:164e:b0:52d:9db2:7924 with SMTP id d75a77b69052e-52fb9362f8cmr45136851cf.1.1787915391841;
        Fri, 28 Aug 2026 04:09:51 -0700 (PDT)
X-Received: by 2002:a05:622a:164e:b0:52d:9db2:7924 with SMTP id d75a77b69052e-52fb9362f8cmr45134241cf.1.1787915388649;
        Fri, 28 Aug 2026 04:09:48 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a611b6f20dsm395292a12.10.2026.08.28.04.09.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2026 04:09:47 -0700 (PDT)
Message-ID: <06d1db31-1168-4147-9b37-3662e8d949b0@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 13:09:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] phy: qualcomm: qmp-combo: Add DP COM v8 header and
 fix register layout
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA5NSBTYWx0ZWRfXxYdQNGNsOSV7
 czkTxPts5peH3S/46wAix4L76LlADSaLDWhYTJkxGdOQXn0FIfFZrsAqPfOsP8MsVEyDWH2RWEp
 hPRyU2OrLAcgvcCjDTCNFCJhOMVbEqMMwjXjKyxMuJ2vs5PPj3Dj9q27rLk2JqMzHzpvVjEBHQA
 YWtaXclClN/zHLxMOeiVrkyLp1mhef4HMWUIRJtpcw0YZcLlO3SsoCD2hPystPvHjQ4g8kvG7v2
 4g5km8WtyS6WwbwThfFIl0GwTMx4+4k+5JyDoKmxZZc/UjJz5TnEi2iuD9t0Qu08z5BsSCQobBt
 AnIFS/+pse0xaEX3cT+hrLRlw859eJLiD+pTFr0E28em+/U8TmYc23HSggSiImWeSIMFNdgpiNi
 SFIxsXeCAFHf+agwb84qIMrCsu6Qdh2T4hxVl4x3daNJkbFfKNei4bUBEi7BDPCa/+donl6kTc7
 9olDHz8Z+Bo1nngze2g==
X-Proofpoint-ORIG-GUID: jJlwQHKQiAiPiuU_bJ-Etdrz6iSEoeVh
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA5NSBTYWx0ZWRfX7/aESYOtCpPK
 yztRiYOzEzJEIJD4/Xn7e+o2akUGPjPH+7WGjswMSfiMjtL3VA4mD8SyDsOf2QsYWITlVctIgKR
 AhF+wEd+VVLY/WlXBJiyB1V4/Mrd0rY=
X-Authority-Analysis: v=2.4 cv=faedDUQF c=1 sm=1 tr=0 ts=6a916c80 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=JKUcNUVehQOhZJPRnW0A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: jJlwQHKQiAiPiuU_bJ-Etdrz6iSEoeVh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_040954_439177_27DB52D7 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

On 8/28/26 11:43 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Add the new DP-specific QSERDES COM v8 header file and update the
> register layout to use DP-specific status register offsets for
> C_READY_STATUS and CMN_STATUS registers.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---

Fixes: 5b289913959b ("phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
